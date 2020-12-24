package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.repository.ChurchRepository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val ACTIVITIES = "/activities"

@Location(ACTIVITIES)
class Activities

fun Route.activities(db: ChurchRepository) {
    get<Activities> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        call.respond(FreeMarkerContent("activities.ftl", mapOf("user" to user)))
    }
}