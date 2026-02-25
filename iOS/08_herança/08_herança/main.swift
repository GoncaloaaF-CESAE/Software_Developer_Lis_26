//
//  main.swift
//  08_herança
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//

import Foundation

print("Hello, World!")

var p1 = Pessoa(nome: "Carlos", idade: 20)

var a1 = Aluno(nome: "Carlos", idade: 20, turma: "dev26")

var porf1 = Professor(nome: "Rita", idade: 23, curso: "Ciber")




print(p1.infos())
print(p1.metodo_pessoa())

print("-----")
print(a1.infos())
print(a1.metodo_aluno())

print("-----")

print(porf1.infos())
print(porf1.metodo_professor())


print("-----")



var lista:[Pessoa] = [p1, a1, porf1]


print(type(of: lista))
print(type(of:lista[2]))


print("-----")

for elm in lista{
    
    print(elm.idade)
}



var joao:Pessoa = Aluno(nome: "Joao", idade: 31, turma: "dev26")

//var maria:Aluno = Pessoa(nome: "Maria", idade: 40)





// Aluno -> Pessoa
// Pessoa ? Aluno






print("-----")

for elm in lista{
    
    if elm is Aluno{ // verifica se elm e do tipo aluno
        print((elm as! Aluno).turma)
        
    }
}





var joao2:Aluno = Aluno(nome: "Joao", idade: 31, turma: "dev26")


var p3:Pessoa = joao2



/*
 
 
 type cast
 
 
 
 (int) "1023"
 
 
 
 
 anyObject
    |
    |
 Pessoa
 
  |
  |
Aluno
 
 
 
 
 
 
 
 */








