//
//  modelos.swift
//  08_herança
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//


class Nota{
   
    var nota = 0
    
}


extension Nota:Savabel{
    func salvar() -> Bool {
        true
    }
}



class Pessoa:Savabel{
    
    var nome:String
    var idade:Int
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    

    func infos() -> String{
        return "Nome: \(nome), Idade: \(idade)"
    }
    
    func metodo_pessoa() -> String{
        return "Método da Pessoa"
    }
    
    
    func salvar() -> Bool {
        return true
    }
}






class Aluno:Pessoa{
    
    var turma:String

    init(nome:String, idade:Int, turma:String){
        self.turma = turma
        super.init(nome: nome, idade: idade)
    }
    

    override func infos() -> String{
        return "Nome: \(nome), Idade: \(idade), turma: \(turma)"
    }
    
    
    func metodo_aluno() -> String{
        return "Método do Aluno"
    }
}


class Professor:Pessoa{
    
    var curso:String
    
    init(nome:String, idade:Int, curso:String){
        self.curso = curso // 1º init da class
        super.init(nome: nome, idade: idade) //depois init da superclass
        
    }
    
    override func infos() -> String{
        return "Nome: \(nome), Idade: \(idade), curso: \(curso)"
    }
    
    
    func metodo_professor() -> String{
        return "Método do Professor"
    }
    
}
