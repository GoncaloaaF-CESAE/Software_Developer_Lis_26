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
                    Log.d("Aula", "Load All Cmt")

                }) {
                    Text("Load all")
                }

                Button(onClick = {
                    Log.d("Aula", "Load cmt id 1")

                }) {
                    Text("Load id 1")
                }
            }
        }
    }

    fun loadAllComments(){}

    fun loadComment(id: Int){}
}
