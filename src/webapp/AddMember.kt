package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.model.User
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.ChurchRepository
import com.st_dominics_bk.repository.Repository
import com.st_dominics_bk.securityCode
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val ADDMEMBER = "/addmember"

@Location(ADDMEMBER)
class Addmember

fun Route.addmember(db: ChurchRepository, hashFunction: (String) -> String) {
    get<Addmember> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        if(user == null){
            call.redirect(Login())
        } else{
            val date = System.currentTimeMillis()
            val code = call.securityCode(date, user, hashFunction)
            call.respond(FreeMarkerContent("addmember.ftl", mapOf("date" to date, "code" to code)))
        }
    }

    post<Addmember>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        val params = call.receiveParameters()
        val action = params["action"] ?: throw java.lang.IllegalArgumentException("Missing parameter: action")

        if(user == null){
            call.redirect(Login())
        }else{
            when (action){
                "add" -> {

                    val name = params["name"] ?: throw IllegalArgumentException("Missing parameter: Name")
                    val phone = params["phone"] ?: throw IllegalArgumentException("Missing parameter: Member Phone Number")
                    val birthday = params["birthday"] ?: throw IllegalArgumentException("Missing parameter: Birthday")
                    val wedding = params["wedding"] ?: throw IllegalArgumentException("Missing parameter: Wedding Date")
                    val society = params["society"] ?: throw IllegalArgumentException("Missing parameter: Society")
                    val address = params["address"] ?: throw IllegalArgumentException("Missing parameter: Area")

                    db.addmember(user!!.userId, name, phone, birthday, wedding, society, address)
                }
            }
            call.redirect(Members())
        }
    }
}