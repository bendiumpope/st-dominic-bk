package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.ChurchRepository
import com.st_dominics_bk.securityCode
import com.st_dominics_bk.verifyCode
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val ADDANNOUNCEMENT = "/addannouncement"

@Location(ADDANNOUNCEMENT)
class Addannouncement

fun Route.addannouncement(db: ChurchRepository, hashFunction: (String) -> String) {

    get<Addannouncement> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        if(user == null){
            call.redirect(Login())
        } else{
            val date = System.currentTimeMillis()
            val code = call.securityCode(date, user, hashFunction)
            call.respond(FreeMarkerContent("addannouncement.ftl", mapOf("date" to date, "code" to code)))
        }
    }

    post<Addannouncement>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        val addAnnouncementparams = call.receiveParameters()

        val action = addAnnouncementparams["action"] ?: throw java.lang.IllegalArgumentException("Missing parameter: action")
        println("$user")

        if(user == null ){
            call.redirect(Login())
        }else{
            when (action){
                "add" -> {

                    val name = addAnnouncementparams["name"] ?: throw IllegalArgumentException("Missing parameter: Name of Announcer")
                    val announcementDate = addAnnouncementparams["announcementDate"] ?: throw IllegalArgumentException("Missing parameter: Announcement Date")
                    val title = addAnnouncementparams["title"] ?: throw IllegalArgumentException("Missing parameter: Announcement Title")
                    val message = addAnnouncementparams["announce"] ?: throw IllegalArgumentException("Missing parameter: Announcement Message")

                    println("$name, $announcementDate, $title, $message")
                    try{
                        db.addannouncement(user!!.userId, name, announcementDate, title, message)

                    }catch (e: Throwable){
                        println("an error occured $e")
                    }

                }
            }
            call.redirect(Announcements())
        }
    }
}