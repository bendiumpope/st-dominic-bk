package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.Announcement
import com.st_dominics_bk.model.Announcements.date
import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.repository.Repository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val INDEX = "/"

@Location(INDEX)
class Index

fun Route.index(db: Repository) {
    get<Index> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        var announcement: List<Announcement> = db.announcement()


        var announcementz: List<Announcement> = announcement.asReversed()

        var announcements = arrayListOf<Announcement>()

        if(announcementz.isNotEmpty()){

            var count = 0

            for(elements in announcementz){
                if(count == 3){
                    break
                }
                announcements.add(elements)

                count++
            }
        }



        call.respond(FreeMarkerContent("index.ftl", mapOf("announcement" to announcements, "user" to user)))


    }
}