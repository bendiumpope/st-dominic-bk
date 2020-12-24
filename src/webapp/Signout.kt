package com.st_dominics_bk.webapp

import com.st_dominics_bk.model.EPSession
import com.st_dominics_bk.redirect
import com.st_dominics_bk.repository.Repository
import io.ktor.application.*
import io.ktor.locations.*
import io.ktor.routing.*
import io.ktor.sessions.*

const val SIGNOUT = "/signout"

@Location(SIGNOUT)
class Signout

fun Route.signout(db: Repository){

    get<Signout>{
        val user = call.sessions.get<EPSession>()?.let { db.user(it.userId) }
//        val activeUser = db.activeUser(user!!.userId)

//        try {
//            db.updateactiveUser(activeUser!!.id, user.userId, "OffLine")
//        } catch (e: Throwable){
//            println("an error occured $e")
//        }

        call.sessions.clear<EPSession>()
        call.redirect(Index())
    }
}