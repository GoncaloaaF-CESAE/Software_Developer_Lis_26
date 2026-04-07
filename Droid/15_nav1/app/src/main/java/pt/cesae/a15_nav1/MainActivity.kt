package pt.cesae.a15_nav1

import android.os.Bundle
import android.util.Log
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            Column(verticalArrangement = Arrangement.Center,
                modifier = Modifier.fillMaxSize()
                    .padding(15.dp)) {
                AppNav()
            }
        }
    }
}


@Composable
fun AppNav(){

    val navController = rememberNavController()

    NavHost(
        navController = navController,
        startDestination = "home"
    )
    {
        composable("home"){
            HomeScreen(navController)
        }

        composable("detalhe/{nome}") {
            val nome = it.arguments?.getString("nome")
            Detalhes(navController, nome) // composable com a lista de produtos
        }
    }
}


// no Composable home receber um nome de uma caixa de texto e passar esse nome para o
// Composable de detalhes

@Composable
fun HomeScreen(navController: NavController){
    var ctx = LocalContext.current

    var nome by remember { mutableStateOf("") }
    Column {
        Text("Conteúdo da 1ª página")

        TextField(value = nome,
            onValueChange = {
                nome = it
            },
            placeholder = {
                Text("nome: ")
            })

        Button(onClick = {
            if (nome.length >= 3 ) {
                navController.navigate("detalhe/$nome")
            }else {

                Toast.makeText(ctx,
                    "o nome tem de ter 3 ou mais  de letras",
                    Toast.LENGTH_LONG).show()
                    Log.d("Aula", "o nome tem de ter 3 ou mais  de letras ")
            }

        }) {
            Text("ir para Detalhes")
        }
    }
}

@Composable
fun Detalhes(navController: NavController, nome: String?){
    Column {

        Text("nome: $nome")

        Text("Pagina de detalhes")
        Button(onClick = {
            navController.popBackStack()
        }) {
            Text("Voltar")
        }
    }
}