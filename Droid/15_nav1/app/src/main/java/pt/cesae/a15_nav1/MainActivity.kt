package pt.cesae.a15_nav1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
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
                modifier = Modifier.fillMaxSize()) {

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

        composable("detalhe") {
            Detalhes(navController) // composable com a lista de produtos
        }
    }
}

@Composable
fun HomeScreen(navController: NavController){
    Column {
        Text("Conteúdo da 1ª página")
        Button(onClick = {
            navController.navigate("detalhe")
        }) {
            Text("ir para Detalhes")
        }
    }
}

@Composable
fun Detalhes(navController: NavController){
    Column {
        Text("Pagina de detalhes")
        Button(onClick = {
            navController.popBackStack()
        }) {
            Text("Voltar")
        }
    }
}