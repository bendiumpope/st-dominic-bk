package com.st_dominics_bk.model

import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.Column
import java.io.Serializable

data class Member(
    var id: Int,
    val userId: String,
    var name: String,
    var phone: String,
    var birthday: String,
    var wedding: String,
    var society: String,
    var area: String=""
) : Serializable

object Members: IntIdTable(){
    val user: Column<String> = varchar("user_id", 255).index()
    var name: Column<String> = varchar("name", 255)
    var phone: Column<String> = varchar("phone", 255)
    var birthday: Column<String> = varchar("birthday", 255)
    var wedding: Column<String> = varchar("wedding", 255)
    var society: Column<String> = varchar("society", 255)
    var area: Column<String> = varchar("area", 255)
}