package com.st_dominics_bk.repository

import com.st_dominics_bk.model.Announcement
import com.st_dominics_bk.model.Member
import com.st_dominics_bk.model.User

interface Repository {

    //USER
    suspend fun user(userId: String, hash:String? = null): User?
    suspend fun userByPhone(phone:String): User?
    suspend fun users(): List<User>
    suspend fun removeuser(id:String): Boolean
    suspend fun createUser(user: User)
    suspend fun updateuser(userId: String, newPhone:String, newPassword: String, newPasswordHash: String)

    //ANNOUNCEMENT
    suspend fun addannouncement(userId: String, nameValue: String, announcement_dateValue: String, titeValue: String, messageValue: String): Announcement?
    suspend fun announcement(id:Int): Announcement?
    suspend fun announcement(userId:String): List<Announcement>
    suspend fun announcement(): List<Announcement>
    suspend fun updateannouncement(id:Int, newName: String, newAnnouncement_date: String, newTitle: String, newMessage: String)
    suspend fun removeannouncement(id:Int):Boolean
    suspend fun removeannouncement(id:String):Boolean

    //MEMBER
    suspend fun addmember(userId: String, nameValue: String, phoneValue: String, birthdayValue: String, weddingValue: String,
                          societyValue: String, areaValue: String): Member?
    suspend fun member(id:Int): Member?
    suspend fun member(userId:String): List<Member>
    suspend fun members(): List<Member>
    suspend fun updatemember(id:Int, newName: String, newPhone: String, newbirthday: String, newWedding: String, newSociety: String, newArea: String)
    suspend fun removemember(id:Int):Boolean
    suspend fun removemember(id:String):Boolean

    suspend fun clear()
}