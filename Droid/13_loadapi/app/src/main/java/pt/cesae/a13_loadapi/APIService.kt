package pt.cesae.a13_loadapi

import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Path

interface APIService {

    @GET("comments")
    fun getComments(): Call<List<Comment>>

    @GET("comments/{id}")
    fun getComment(@Path("id") id: Int): Call<Comment>
}