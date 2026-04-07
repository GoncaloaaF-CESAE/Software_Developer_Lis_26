package pt.cesae.a16_nav_mvvm

import android.util.Log
import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.StateFlow

class ListaViewModel: ViewModel() {

    val alunos: StateFlow<List<Aluno>> = AlunoRepository.alunos

    fun selecionarAluno(aluno: Aluno){
        AlunoRepository.selecionarAluno(aluno)
        Log.d("Aula 2", aluno.toString())
    }
}