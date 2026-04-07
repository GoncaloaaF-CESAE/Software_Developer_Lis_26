package pt.cesae.a16_nav_mvvm

import android.util.Log
import androidx.compose.runtime.MutableState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

object AlunoRepository {
    private val listaInicial = listOf(
        Aluno(1, "Gonçalo", "Android", 25),
        Aluno(2, "Ana", "iOS", 22),
        Aluno(3, "Pedro", "Web", 28)
    )

    private val _alunos = MutableStateFlow(listaInicial)
    val alunos: StateFlow<List<Aluno>> = _alunos.asStateFlow()


    private val _alunoSelecionado = MutableStateFlow<Aluno?>(null)
    private val alunoSelecionado = _alunoSelecionado.asStateFlow()



    fun selecionarAluno(aluno: Aluno){
        // validar se aluno existe
        _alunoSelecionado.value = aluno
    }


    fun atualizarAluno(alunoAtulizado: Aluno){
        Log.d("Aula", "update aluno")

    }

}