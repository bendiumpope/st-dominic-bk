package com.st_dominics_bk.repository

import com.st_dominics_bk.model.*
import com.st_dominics_bk.repository.DatabaseFactory.dbQuery
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.transactions.experimental.transaction
import java.lang.IllegalArgumentException

class ChurchRepository : Repository{

    override suspend fun user(userId: String, hash: String?): User? {
        val user = dbQuery {
            Users.select {
                (Users.id eq userId)
            }.mapNotNull { toUser(it) }
                .singleOrNull()
        }
        return when {
            user == null -> null
             hash == null -> user
            user.passwordHash == hash -> user
            else -> null
        }
    }

    override suspend fun userByPhone(phone: String): User? = dbQuery{
        Users.select { Users.phone.eq(phone) }
            .map {
                User(
                    it[Users.id],
                    it[Users.phone],
                    it[Users.password],
                    it[Users.passwordHash]
                )
            }.singleOrNull()
    }

    override suspend fun users(): List<User> = dbQuery {
        Users.selectAll().map { toUser(it) }
    }

    override suspend fun removeuser(userId: String): Boolean {
        if (user(userId, null) == null) {
            throw IllegalArgumentException("No User found for id $userId.")
        }
        return dbQuery {
            Users.deleteWhere { Users.id eq userId } > 0
        }
    }

    override suspend fun createUser(user: User) = dbQuery {
        Users.insert {
            it[id] = user.userId
            it[phone] = user.phone
            it[password] = user.password
            it[passwordHash] = user.passwordHash
        }
        Unit
    }

    override suspend fun updateuser(
        userId: String,
        newPhone: String,
        newPassword: String,
        newPasswordHash: String
    ) = dbQuery {
        Users.update({ Users.id eq userId }) {
            it[phone] = newPhone
            it[password] = newPassword
            it[passwordHash] = newPasswordHash
        }
        Unit
    }

    override suspend fun addannouncement(
        userId: String,
        nameValue: String,
        announcement_dateValue: String,
        titeValue: String,
        messageValue: String
    ) = dbQuery {
        val insertStatement = Announcements.insert {
            it[user] = userId
            it[name] = nameValue
            it[announcement_date] = announcement_dateValue
            it[title] = titeValue
            it[message] = messageValue
        }
        val result = insertStatement.resultedValues?.get(0)
        if (result != null) {
            toAnnouncement(result)
        } else {
            null
        }
    }

    override suspend fun announcement(id: Int): Announcement? = dbQuery {
        Announcements.select {
            (Announcements.id eq id)
        }.mapNotNull { toAnnouncement(it) }
            .singleOrNull()
    }

    override suspend fun announcement(userId: String): List<Announcement> = dbQuery {
        Announcements.select {
            (Announcements.user eq userId)
        }.map { toAnnouncement(it) }
    }

    override suspend fun announcement(): List<Announcement> = dbQuery {
        Announcements.selectAll().map { toAnnouncement(it) }
    }

    override suspend fun updateannouncement(id: Int, newName: String, newAnnouncement_date: String, newTitle: String, newMessage: String)  = dbQuery {
        Announcements.update({ Announcements.id eq id }) {
            it[name] = newName
            it[announcement_date] = newAnnouncement_date
            it[title] = newTitle
            it[message] = newMessage
        }
        Unit
    }

    override suspend fun removeannouncement(id: Int): Boolean {
        if (announcement(id) == null) {
            throw IllegalArgumentException("No phrase found for id $id.")
        }
        return dbQuery {
            Announcements.deleteWhere { Announcements.id eq id } > 0
        }
    }

    override suspend fun removeannouncement(id: String): Boolean {
        return removeannouncement(id.toInt())
    }

    override suspend fun addmember(
        userId: String,
        nameValue: String,
        phoneValue: String,
        birthdayValue: String,
        weddingValue: String,
        societyValue: String,
        areaValue: String
    ) = dbQuery {
        val insertStatement = Members.insert {
            it[user] = userId
            it[name] = nameValue
            it[phone] = phoneValue
            it[birthday] = birthdayValue
            it[wedding] = weddingValue
            it[society] = societyValue
            it[area] = areaValue
        }
        val result = insertStatement.resultedValues?.get(0)
        if (result != null) {
            toMember(result)
        } else {
            null
        }
    }

    override suspend fun member(id: Int): Member? = dbQuery {
        Members.select {
            (Members.id eq id)
        }.mapNotNull { toMember(it) }
            .singleOrNull()
    }

    override suspend fun member(userId: String): List<Member> = dbQuery {
        Members.select {
            (Members.user eq userId)
        }.map { toMember(it) }
    }

    override suspend fun members(): List<Member>  = dbQuery {
        Members.selectAll().map { toMember(it) }
    }

    override suspend fun updatemember(
        id: Int,
        newName: String,
        newPhone: String,
        newbirthday: String,
        newWedding: String,
        newSociety: String,
        newArea: String
    ) = dbQuery {
        Members.update({ Members.id eq id }) {
            it[name] = newName
            it[phone] = newPhone
            it[birthday] = newbirthday
            it[wedding] = newWedding
            it[society] = newSociety
            it[area] = newArea

        }
        Unit
    }

    override suspend fun removemember(id: Int): Boolean {
        if (member(id) == null) {
            throw IllegalArgumentException("No phrase found for id $id.")
        }
        return dbQuery {
            Members.deleteWhere { Members.id eq id } > 0
        }
    }

    override suspend fun removemember(id: String): Boolean {
        return removemember(id.toInt())
    }

    override suspend fun clear() {

        Announcements.deleteAll()
        Members.deleteAll()
        Users.deleteAll()
    }

    private fun toUser(row: ResultRow): User =
        User(
            userId = row[Users.id],
            phone = row[Users.phone],
            password = row[Users.password],
            passwordHash = row[Users.passwordHash]

        )

    private fun toAnnouncement(row: ResultRow): Announcement =
        Announcement(
            id = row[Announcements.id].value,
            userId = row[Announcements.user],
            name = row[Announcements.name],
            announcement_date = row[Announcements.announcement_date],
            title = row[Announcements.title],
            message = row[Announcements.message]

        )


    private fun toMember(row: ResultRow): Member =
        Member(
            id = row[Members.id].value,
            userId = row[Members.user],
            name = row[Members.name],
            phone = row[Members.phone],
            birthday = row[Members.birthday],
            wedding = row[Members.wedding],
            society = row[Members.society],
            area = row[Members.area]

        )

}