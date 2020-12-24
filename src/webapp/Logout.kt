package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.ChurchRepository
import io.ktor.application.*
import io.ktor.locations.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val LOGOUT = "/logout"

@Location(LOGOUT)
class Logout

fun Route.logout(db: ChurchRepository){

    get<Logout>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }
//        val activeUser = db.activeUser(user!!.userId)
//
//        try {
//            db.updateactiveUser(activeUser!!.id, user.userId, "OffLine")
//        } catch (e: Throwable){
//            println("an error occured $e")
//        }

        call.sessions.clear<EPSession>()
        call.redirect(Index())
    }
}