package pt.cesae.a11_mvvm

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

data class Aluno(
    var nome: String,
    val turma: String)



class MainViewModel: ViewModel() {

    private val _txt = MutableStateFlow("Gonçalo") // Lê e escreve
        // get
        // set
    val txt: StateFlow<String> = _txt.asStateFlow()  // interface de leitura
        // get


    private var _aluno = MutableStateFlow(Aluno("Gonçalo", "ReSkill"))
    val aluno: StateFlow<Aluno> = _aluno.asStateFlow()  // interface de leitura


    fun setTxt(novoNome: String){
        _txt.value = novoNome
    }

    fun nudarNome(novoNome: String){
        _aluno.value = _aluno.value.copy(nome= novoNome)
    }

}
