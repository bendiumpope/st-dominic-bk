package com.st_dominics_bk.model

import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.Column
import java.io.Serializable

data class Announcement(
    var id: Int,
    val userId: String,
    var name: String,
    var announcement_date: String,
    var title: String,
    var message: String=""
) : Serializable

object Announcements: IntIdTable(){
    val user: Column<String> = varchar("user_id", 60).index()
    var name: Column<String> = varchar("name", 255)
    var announcement_date: Column<String> = varchar("announcement_date", 255)
    var title: Column<String> = varchar("title", 255)
    var message: Column<String> = varchar("message", 255)
}