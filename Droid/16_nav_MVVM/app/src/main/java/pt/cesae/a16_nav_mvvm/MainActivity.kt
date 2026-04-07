package pt.cesae.a16_nav_mvvm

import android.app.appsearch.Migrator
import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Card
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import org.w3c.dom.Text

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {

            appNav()

        }
    }
}


@Composable
fun appNav(){
    val navController = rememberNavController()


    NavHost(
        navController = navController,
        startDestination = "lista"
    ){

        composable("lista") {
            listaAlunos()
        }

    }
}

@Composable
fun listaAlunos(){
    val vm: ListaViewModel = viewModel()
    val alunos by vm.alunos.collectAsState()

    Log.d("Aula 2", alunos.count().toString())
    LazyColumn(modifier = Modifier.fillMaxSize()
    ) {

        items(alunos){ aluno ->
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(10.dp)
                    .clickable{
                        vm.selecionarAluno(aluno)
                    }
         ){
                Column(
                    modifier = Modifier
                        .padding(16.dp)
                ) {
                    Text("Nome: ${aluno.nome}")
                    Text("Curso: ${aluno.curso}")
                    Text("Curso: ${aluno.idade}")
                }

            }


        }


    }
}