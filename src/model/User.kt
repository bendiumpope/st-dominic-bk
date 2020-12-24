package com.st_dominics_bk.model

import io.ktor.auth.*
import org.jetbrains.exposed.sql.Table
import java.io.Serializable

data class User (
    val userId: String,
    val phone: String,
    val password: String,
    val passwordHash: String
) : Serializable, Principal

object Users: Table(){
    val id = varchar("id", 20).primaryKey()
    var phone = varchar("phone", 256).uniqueIndex()
    var password = varchar("password", 64)
    var passwordHash = varchar("password_hash", 64)
}

