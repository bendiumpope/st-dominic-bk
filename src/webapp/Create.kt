package com.st_dominics_bk.webapp

import com.st_dominics_bk.MIN_PASSWORD_LENGTH
import com.st_dominics_bk.MIN_USER_ID_LENGTH
import com.st_dominics_bk.Users.Users
import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.model.User
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.ChurchRepository
import com.st_dominics_bk.userNameValid
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.http.*
import io.ktor.locations.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val CREATE = "/create"

@Location(CREATE)
data class Create(
    val userId: String="",
    val phone: String="",
    val password: String = "",
    val error: String = ""
)

fun Route.create(db: ChurchRepository, hashFunction: (String) -> String){

    post<Create>{
        val user = call.sessions.get<EPSession>()?.let { user -> db.user(user.userId) }


        val createUserParameters = call.receive<Parameters>()

        val userId = createUserParameters["name"] ?: return@post call.redirect(it)
        val phone = createUserParameters["phone"] ?: return@post call.redirect(it)
        val password = createUserParameters["password"] ?: return@post call.redirect(it)
        val confirmPassword = createUserParameters["confirmPassword"] ?: return@post call.redirect(it)

        println("$userId, $phone, $password, $confirmPassword")

        val signupError = Create(userId, phone)

        when{
            password.length < MIN_PASSWORD_LENGTH ->
                call.redirect(signupError.copy(error = "Password should be at least $MIN_PASSWORD_LENGTH characters long"))
            password != confirmPassword ->
                call.redirect(signupError.copy(error = "Password/confirm password dont match"))
            userId.length < MIN_USER_ID_LENGTH ->
                call.redirect(signupError.copy(error = "Username should be at least $MIN_USER_ID_LENGTH characters long"))
            !userNameValid(userId) ->
                call.redirect(signupError.copy(error = "Username should consist of digits, letters, dots or underscores"))
            db.user(userId) != null ->
                call.redirect(signupError.copy(error = "User with the following username is already registered"))


            else -> {
                val hash = hashFunction(password)
                val newUser = User(userId, phone, password, hash)

                try {
                    db.createUser(newUser)
//                    db.addactiveUser(userId, "OnLine")
                } catch (e: Throwable){
                    when{
                        db.user(userId) != null ->
                            call.redirect(signupError.copy(error = "User with the following username $ is already registered"))
                        db.userByPhone(phone) != null ->
                            call.redirect(signupError.copy(error = "User with the following email $phone is already registered"))

                        else ->{
                            application.log.error("Failed to register user", e)
                            call.redirect(signupError.copy(error = "Failed to register"))
                            println("an error occured $e")
                        }
                    }
                }
                call.redirect(Users())
            }
        }
    }


    get<Create>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        if (user == null){
            call.redirect(Index())
        } else{
        call.respond(FreeMarkerContent("signup.ftl", mapOf("error" to it.error)))
        }
    }
}