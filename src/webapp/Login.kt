package com.st_dominics_bk.webapp

import com.st_dominics_bk.MIN_PASSWORD_LENGTH
import com.st_dominics_bk.MIN_USER_ID_LENGTH
import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.ChurchRepository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.http.*
import io.ktor.locations.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val LOGIN= "/login"

@Location(LOGIN)
data class Login(val userId: String="", val error: String="")

fun Route.login(db: ChurchRepository, hashFunction: (String) -> String) {
    post<Login> {

        val loginParameters = call.receive<Parameters>()
        val userId = loginParameters["name"] ?: return@post call.redirect(it)
        val password = loginParameters["password"] ?: return@post call.redirect(it)

        val signInError = Login(userId)

        val login = when {
            userId.length < MIN_USER_ID_LENGTH -> null
            password.length < MIN_PASSWORD_LENGTH -> null
            else -> db.user(userId, hashFunction(password))
        }

        if (login == null) {
            call.redirect(signInError.copy(error = "Invalid username or password"))
        } else {

            /* val activeUser = db.activeUser(signin.userId)

            try {
                db.updateactiveUser(activeUser!!.id, signin.userId, "OnLine")

            } catch (e: Throwable){
                println("an error occured $e")
            }*/
            call.sessions.set(EPSession(login.userId))
            call.redirect(Index())
        }
    }

    get<Login> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        call.respond(FreeMarkerContent("login.ftl", mapOf("error" to it.error)))
    }
}