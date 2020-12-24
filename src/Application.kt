package com.st_dominics_bk

import com.st_dominics_bk.Users.users
import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.model.User
import com.st_dominics_bk.repository.ChurchRepository
import com.st_dominics_bk.repository.DatabaseFactory
import com.st_dominics_bk.webapp.*
import freemarker.cache.ClassTemplateLoader
import io.ktor.application.*
import io.ktor.auth.*
import io.ktor.auth.jwt.*
import io.ktor.features.*
import io.ktor.freemarker.*
import io.ktor.gson.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.locations.*
import io.ktor.response.*
import io.ktor.request.*
import io.ktor.routing.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.sessions.*
import java.net.URI
import java.util.concurrent.TimeUnit

fun main(args: Array<String>): Unit = EngineMain.main(args)

@Suppress("unused") // Referenced in application.conf
@JvmOverloads
fun Application.module(testing: Boolean = false) {

    install(DefaultHeaders)

    install(StatusPages){
        exception<Throwable>{e ->
            call.respondText(e.localizedMessage,
                ContentType.Text.Plain, HttpStatusCode.InternalServerError)
        }
    }

    install(ContentNegotiation){
        gson()
    }

    install(FreeMarker){
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
    }

//    install(Authentication){
//        basic(name = "auth"){
//           realm = "ktor server"
//            validate{ credentials ->
//                if(credentials.password == "${credentials.name}123") User(credentials.name) else null
//            }
//        }
//    }

    install(Locations)

    install(Sessions){
        cookie<EPSession>("SESSION"){
            transform(SessionTransportTransformerMessageAuthentication(hashKey))
        }
    }
    val hashFunction = { s: String -> hash(s) }
    DatabaseFactory.init()

    val db = ChurchRepository()

    val jwtServices = JwtService()

    install(Authentication){
        jwt ("jwt") {
            verifier(jwtServices.verifier)
            realm = "stdominics app"
            validate {
                val payload = it.payload
                val claim = payload.getClaim("id")
                val claimString = claim.asString()
                val user = db.user(claimString)
                user
            }
        }
    }
    routing{
        static("/static"){
            resources("staticfiles")
        }

        index(db)
        login(db, hashFunction)
        create(db, hashFunction)
        priests(db)
        announcements(db)
        activities(db)
        members(db)
        addannouncement(db, hashFunction)
        addmember(db, hashFunction)
        users(db)
        logout(db)
    }
}

const val API_VERSION = "/api/v1"

suspend fun ApplicationCall.redirect(location: Any){
    respondRedirect(application.locations.href(location))
}

fun ApplicationCall.verifyCode(date: Long, user:User, code:String, hashFunction: (String) -> String) =
    securityCode(date,user,hashFunction) == code &&
            (System.currentTimeMillis()-date).let { it > 0 && it < TimeUnit.MILLISECONDS.convert(2, TimeUnit.HOURS) }

fun ApplicationCall.securityCode(date: Long, user:User, hashFunction: (String) -> String) =
    hashFunction("$date:${user.userId}:${request.host()}:${refererHost()}")

fun ApplicationCall.refererHost() = request.header(HttpHeaders.Referrer)?.let { URI.create(it).host }

val ApplicationCall.apiUser get() = authentication.principal<User>()
