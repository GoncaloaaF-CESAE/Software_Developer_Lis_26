//
//  Pessoa.swift
//  05_classes
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//



class Pessoa {
    
    var nome:String
    var idade:Int
    
    init(nome: String, idade: Int = 0) {
        self.nome = nome // self -> this
        self.idade = idade
    }
    
    
    func getNome() {
        print(self.nome)
    }
    
    func setNome(nome:String) {
        self.nome = nome
    }
    
}
