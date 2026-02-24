//
//  main.swift
//  05_classes
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//


/*
 class
 structs
 
 
 amanhã
 
 extension
 
 Propriedades
 herança
 protocolos
 
 
 */


import Foundation


var p1 = Pessoa(nome: "Gonçalo", idade: 20)

print(p1.nome)
print(p1.idade)


var p2 = Pessoa(nome: "Carlos")

print(p2.nome)
print(p2.idade)

var al1 = Aluno(nome: "Rui", media: 15)

print(al1.nome)
print(al1.media)
print(al1)



print("-------------------------------------------")

var p3 = Pessoa(nome: "Gonçalo", idade: 20)
var al2 = Aluno(nome: "Rui", media: 15)

 // p4 -> 0x123113 -> esta o valor
var p4 = p3

p4.nome = "Ana"

print(p4.nome)
print(p3.nome)


var al3 = al2

al3.nome = "Maria"

print(al3.nome)
print(al2.nome)

print("-------------------------------------------")


p3.getNome()
al2.getNome()

print("---")

p3.setNome(nome: "Carlos")
p3.getNome()



print("---")

func mudarNome(nome:String, pessoa:Pessoa){
    
    //todas as validações necessarias
    
    pessoa.setNome(nome: nome)
}

print(p3.nome)
mudarNome(nome: "Rita", pessoa: p3)
print(p3.nome)


print("---")

func mudarNome2(nome:String, aluno:Aluno){
    
    //todas as validações necessarias
    print(aluno.nome)
    
  //  aluno.setNome(novonome: nome)
}



print("---")
let navaPessoa = Pessoa(nome: "Maria")


print(navaPessoa.nome)

navaPessoa.nome = "Joana"

print(navaPessoa.nome)


print("---")
let novoAluno = Aluno(nome: "Maria", media: 0)


print(novoAluno.nome)

// novoAluno.nome = "Joana"

print(novoAluno.nome)




print("---")


//  === -> compara ref


print(p3 === p1)

//class
let navaPessoa4 = Pessoa(nome: "Maria")
let navaPessoa5 = Pessoa(nome: "Maria")


print(navaPessoa4 === navaPessoa5)


print("---")

//structs
let novoAluno2 = Aluno(nome: "Maria", media: 0)
let novoAluno3 = Aluno(nome: "Maria", media: 0)


// print(novoAluno2 == novoAluno3) <- nao fazem comparações

