package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.model.Member
import com.st_dominics_bk.repository.Repository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val MEMBERS = "/members"

@Location(MEMBERS)
class Members

fun Route.members(db: Repository) {
    get<Members> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        var member: List<Member> = db.members()

        var members: List<Member> = member.asReversed()

        call.respond(FreeMarkerContent("members.ftl", mapOf("member" to members, "user" to user)))

    }
}