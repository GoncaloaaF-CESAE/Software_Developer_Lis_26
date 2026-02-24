//
//  Aluno.swift
//  05_classes
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//



struct Aluno {
    var nome:String
    var media:Double
    
    func getNome() {
        print(self.nome)
    }
    
    mutating func setNome(novonome:String) {
       self.nome = novonome
    }
    
}
