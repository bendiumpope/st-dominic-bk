package com.st_dominics_bk.Users

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.model.Member
import com.st_dominics_bk.model.User
import com.st_dominics_bk.repository.Repository
import io.ktor.application.*
import io.ktor.freemarker.*
import io.ktor.locations.*
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val USERS = "/users"

@Location(USERS)
class Users

fun Route.users(db: Repository) {
    get<Users> {
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }

        var userz: List<User> = db.users()

        var users: List<User> = userz.asReversed()

        call.respond(FreeMarkerContent("users.ftl", mapOf("users" to users, "user" to user)))

    }
}