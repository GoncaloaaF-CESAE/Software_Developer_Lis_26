//
//  main.swift
//  07_propriedades
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//

import Foundation

print("Hello, World!")



print(Pessoa.count)


var p1:Pessoa? = Pessoa(nome: "Gonçalo Feliciano", anoNascimento: 2000)



print(p1!.nome)

p1!.nome = "João Carlos"



print(p1!.nome)



//print(Pessoa.count)


//p1 = nil


//print(Pessoa.count)




/*
 
 
 main  -> sempre funcional, entregavel - MVP
  |
  |
 Dev -> camada de dev
  |
  |
  |
aluno1  aluno2  aluno3
 
 
 */




var teste = { (idade:Int) -> Int in
    
    return 2026 - idade
    
}



func calcDataNAscimento(idade:Int, formula:(Int) -> Int) -> Int {
    
    return formula(idade)
    
}


//print(calcDataNAscimento(idade: 26, formula: teste))





var soma = { (val1:Int, val2:Int) -> Int in
    return val1 + val2
}

var subtracao = { (val1:Int, val2:Int) -> Int in
    return val1 - val2
}

var multiplicacao = { (val1:Int, val2:Int) -> Int in
    return val1 * val2
}


func div( v1:Int, _ v2:Int) -> Int{
    0

}

func cacluladora(_ v1:Int, _ v2:Int, _ op: (Int, Int) -> Int) -> Int{
    op(v1, v2)
}


/*
cacluladora(12,31, soma)
cacluladora(12,31, subtracao)
cacluladora(12,31, multiplicacao)
cacluladora(12,31, div)


cacluladora(23, 222) { i, j in
    i+j
}
*/



var q = Quadrado(lado: 4)

/*
print(q.area)
print(q.lado)


q.area = 25


print(q.area)
print(q.lado)


q.area = 25

q.lado = 10
*/


q.lado = 10
