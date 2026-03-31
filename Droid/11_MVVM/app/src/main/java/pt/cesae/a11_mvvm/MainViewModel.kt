package pt.cesae.a11_mvvm

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow



class MainViewModel: ViewModel() {

    private val _txt = MutableStateFlow("Gonçalo") // Lê e escreve
        // get
        // set
    val txt: StateFlow<String> = _txt.asStateFlow()  // interface de leitura
        // get

    fun setTxt(novoNome: String){
        _txt.value = novoNome
    }

}