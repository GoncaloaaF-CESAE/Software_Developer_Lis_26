//
//  Aluno.swift
//  05_classes
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//

struct DadosIdenficacao{
    private let id:Int // pk
    private let nif:Int // -> dado sensivel -> SEMPRE ENCRIPTADO
    private var CC:String // -> dado sensivel -> SEMPRE ENCRIPTADO
}

struct DadosContacto{
    private let id:Int // pk
    private var morada:String
    private var teledone:String
}


struct Aluno {
    
    private let id:Int // pk
  
    private var dadosIdentificacao: DadosIdenficacao
    private var dadosContacto: DadosContacto
    
    private var nome:String
    private var media:Double
    
    func getNome() {
        print(self.nome)
    }
    
    mutating func setNome(novonome:String) {
       self.nome = novonome
    }
    
}
