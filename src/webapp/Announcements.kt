package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.Announcement
import com.st_dominics_bk.model.Announcements.user
import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.Repository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*
import java.lang.IllegalArgumentException

const val ANNOUNCEMENTS = "/announcements"

@Location(ANNOUNCEMENTS)
class Announcements

fun Route.announcements(db: Repository) {


    get<Announcements> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

            var announcement : List<Announcement> = db.announcement()

            var announcements : List<Announcement> = announcement.asReversed()

            val date = System.currentTimeMillis()

            call.respond(
                FreeMarkerContent(
                    "announcements.ftl",
                    mapOf("announcement" to announcements, "user" to user))
            )
        }

    post<Announcements>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }
        val params = call.receiveParameters()
        val action = params["action"] ?: throw java.lang.IllegalArgumentException("Missing parameter: action")

        when(action){
//            "delete" -> {
//                val id = params["id"] ?: throw IllegalArgumentException("Missing parameter: id")
////                println("the id is ${id}")
//                db.removevisitbooking(id)
//                call.redirect(Bookings())
//            }


//            "edit"->{
//                val id = params["id"] ?: throw IllegalArgumentException("Missing parameter: id")
////                println("the id ${id}")
//                val booking = db.visitbooking(id.toInt())
////                println("booking $booking")
//
//                if(user == null){
//                    call.redirect(Signin())
//                } else{
//                    val date = System.currentTimeMillis()
//                    val code = call.securityCode(date, user, hashFunction)
//
//                    call.respond(
//                        FreeMarkerContent("updatebookings.ftl",
//                            mapOf( "booking" to booking, "user" to user, "code" to code, "id" to id), user.userId)
//                    )
//                }
//            }
        }
    }
}


