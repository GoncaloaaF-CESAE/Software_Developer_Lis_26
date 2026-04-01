package pt.cesae.a13_loadapi

import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {

            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier
                    .fillMaxSize()

            ) {

                Button(onClick = {
                    Log.d("Aula", "inicio - Load All Cmt")
                    loadAllComments()
                    Log.d("Aula", "fim - Load All Cmt")

                }) {
                    Text("Load all")
                }

                Button(onClick = {
                    Log.d("Aula", "Load cmt id 1")
                    loadComment(1)

                }) {
                    Text("Load id 1")
                }
            }
        }
    }

    fun loadAllComments(){
        // isLoading = True
        Log.d("Aula","Inicio - FN All" )

        RetrofitInstance.api.getComments().enqueue(object: Callback<List<Comment>>{

            override fun onResponse(
                call: Call<List<Comment>>,
                response: Response<List<Comment>>) {

               if (response.isSuccessful){
                   Log.d("Aula","Inicio - FN All -onResponse " )
                   response.body()?.let {
                       for (cmt in it){
                           Log.d("Aula", cmt.email)
                       }
                   }
                   Log.d("Aula","Fim - FN All -onResponse " )
               }else {
                   Log.e("Aula", "resposta sem sucesso")
               }
                // isLoading = False
            }

            override fun onFailure(call: Call<List<Comment>>, t: Throwable) {
                Log.e("Aula", "Erro: ${t.message}")
                // isLoading = False
            }

        })

        Log.d("Aula","Fim - FN All" )
    }

    fun loadComment(id: Int){
        // isLoading = True

        RetrofitInstance.api.getComment(id).enqueue(object: Callback<Comment>{

            override fun onResponse(
                call: Call<Comment>,
                response: Response<Comment>) {

                if (response.isSuccessful){
                    response.body()?.let {
                     Log.d("Aula", it.email)
                    }

                }else {
                    Log.e("Aula", "resposta sem sucesso")
                }
                // isLoading = False
            }

            override fun onFailure(call: Call<Comment>, t: Throwable) {
                Log.e("Aula", "Erro: ${t.message}")
                // isLoading = False
            }

        })
    }
}
