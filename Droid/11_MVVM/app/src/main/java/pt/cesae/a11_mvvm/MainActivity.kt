package pt.cesae.a11_mvvm

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.viewModels
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.ViewModel
import pt.cesae.a11_mvvm.ui.theme._11_MVVMTheme
import kotlin.properties.ReadOnlyProperty
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import kotlinx.coroutines.flow.MutableStateFlow

class MainActivity : ComponentActivity() {

    private val vm: MainViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            Column {
                MainPage(vm)
            }
        }
    }
}

@Composable
fun MainPage(viewModel: MainViewModel){
    val aluno by viewModel.aluno.collectAsStateWithLifecycle()

    var novoNome by remember { mutableStateOf("") }

    Column(horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
        modifier = Modifier
            .fillMaxHeight(0.5f)
            .fillMaxWidth()
        ) {

        Text(aluno.nome)
        Text(aluno.turma)

        TextField(value = novoNome,
            onValueChange = {
                
                novoNome = it
            },
            placeholder = {
                Text("Novo Nome")
            },
            modifier = Modifier
                .padding(25.dp)

        )
        Button({
            //viewModel.txt.value = "Novo Valor"
            if (novoNome.length > 3){
                viewModel.nudarNome(novoNome)
                novoNome = ""
            }

        }) {
            Text("Mudar txt")
        }

    }

}
