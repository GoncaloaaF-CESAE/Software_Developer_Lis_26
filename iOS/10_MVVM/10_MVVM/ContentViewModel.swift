//
//  ContentViewModel.swift
//  10_MVVM
//
//  Created by Gonçalo Feliciano on 06/03/2026.
//

import Combine

class ContentViewModel:ObservableObject{
    
    @Published var msg = ""
    @Published var msg_TF = ""
  
    var contador = 0
  

    func testeMsg(){
        contador += 1
        msg = "Ola Mundo \(contador)"
    }
    

    func updateMsg(){

        msg = msg_TF
        msg_TF = ""
    }
    
}

