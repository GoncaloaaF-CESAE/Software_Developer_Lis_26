package pt.cesae.a16_nav_mvvm

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.StateFlow

class DetalheViewModel: ViewModel() {

    val alunoSelecionado: StateFlow<Aluno?> = AlunoRepository.alunoSelecionado

    fun atualizarAluno(novoNome: String){
        val aluno = alunoSelecionado.value ?: return
        val alunoAtulizado = aluno.copy(nome = novoNome )
        AlunoRepository.atualizarAluno(alunoAtulizado)
    }

}