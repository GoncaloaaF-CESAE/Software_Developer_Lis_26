package pt.cesae.a12_listas

import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import pt.cesae.a12_listas.ui.theme._12_listasTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            Column(modifier = Modifier.padding(top = 25.dp)) {
                ListaObj()
            }
        }
    }
}

@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Composable
fun ListaSimples(){
    val nomes = listOf("Ana", "Bruno", "Carlos", "Diana",)

    LazyColumn {
        items(nomes){ nome ->
            Text(nome)
        }
    }
}

@Composable
fun ListaComLayout(){
    val nomes = listOf("Ana", "Bruno", "Carlos", "Diana",)

    LazyColumn {
        items(nomes){ nome ->
            ListRow(nome)
        }
    }
}

@Composable
fun ListRow(nome: String){
    Row(
        modifier = Modifier
            .background(Color.Red)
            .fillMaxWidth()
            .padding(15.dp)

    ) {
        Text(nome)
    }
}


@Composable
fun ListaComLayoutClick(){
    val nomes = listOf("Ana", "Bruno", "Carlos", "Diana",)

    LazyColumn {
        items(nomes){ nome ->
            Row(
                modifier = Modifier
                    .background(Color.Red)
                    .clickable{
                        Log.d("Aula","click na row")
                    }
                    .fillMaxWidth()
                    .padding(15.dp)


            ) {
                Text(nome, modifier = Modifier
                    )
            }
        }
    }
}


data class Pessoa(val nome: String, val idade: Int)



fun funcDeTeste(n: String, i: Int){
    Log.d("Aula","click na row de $n com $i")

}
@Composable
fun ListaObj(){
    val pessoas = listOf(
        Pessoa("Ana", 25),
        Pessoa("Bruno", 30),
        Pessoa("Carlos", 28)
    )


    LazyColumn {
        items(pessoas){ pessoa ->
            PessoaRow3(pessoa, onClick = { nome, idade ->
                Log.d("Aula","click na row de $nome com $idade")
            })
        }
    }
}

@Composable
fun PessoaRow(pessoa: Pessoa, onClick: () -> Unit){
    Row() {

        Column(modifier = Modifier
            .clickable{
                onClick()
           // Log.d("Aula","click na row de ${pessoa}")
        }
            .fillMaxWidth()
            .padding(15.dp)
        ){
            Text(pessoa.nome)
            Text("Idade 2: ${pessoa.idade}")
        }
    }
}


@Composable
fun PessoaRow2(pessoa: Pessoa, onClick: (String, Int) -> Unit){
    Row() {

        Column(modifier = Modifier
            .clickable{
                onClick(pessoa.nome, pessoa.idade)
                // Log.d("Aula","click na row de ${pessoa}")
            }
            .fillMaxWidth()
            .padding(15.dp)
        ){
            Text(pessoa.nome)
            Text("Idade 2: ${pessoa.idade}")
        }
    }
}



@Composable
fun PessoaRow3(pessoa: Pessoa, onClick: (String, Int) -> Unit){
    Row {

        Box(modifier = Modifier
            .size(50.dp)
            .background(Color.DarkGray)
        )
        Spacer(modifier = Modifier.width(15.dp))

        Column{
            Text(pessoa.nome)
            Text("Idade 2: ${pessoa.idade}")
        }
    }
}


/*

Crie um Guess the Number em kotlin e jetpack compose.
crie também uma lista com todos os palpites do utilizador
e indique se maior ou menor


 */