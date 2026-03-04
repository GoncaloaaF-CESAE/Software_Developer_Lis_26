import Cocoa

// if


var idade = 13

if idade >= 18 {
    
    print("Maior de idade")
    
} else if idade > 12{
    
    print("Teen")
    
} else {
    
    print("Menor de idade")
}
    

// switch/case

let valor = 20
switch valor {
    case 1:
        print("Janeiro")
        if valor == 1 {
            fallthrough
        }
        
    
 case 2:
    print("Fevereiro")
    
    if valor == 2 {
        fallthrough
    }
        
    
    case 3:
        print("Março")
    
    if valor == 3 {
        fallthrough
    }
case 12:
    print("Dezembro")

    if valor == 12 {
        print("Janeiro")
    }


default:
        print("mes invalido")
        
}


// for


// 0...10 -> 0 1 2 3 4 5 6 7 8 9 10

// 0..<10 -> 0 1 2 3 4 5 6 7 8 9

for elm in 0...10 where elm % 2 == 0{
    print(elm)
}


print("-----")

// print(Array(stride(from: 0, to: 30, by: 4)))

for elm in stride(from: 11, to: -30, by: -2) where elm > -5{
    print(elm)
}

print("\n\n\n\n")

for elm in 0...20{
    
    if elm % 3 == 0{
        continue
        
    }
    
    if elm % 2 == 0{
        print(elm)
    }else{
        print("Impar")
    }
    
    
    if elm == 15{
        break
    }
}

// while

print("-------------")
var num = 10

while num > 0 {
    
    print(num)
    num -= 1
}



// "do"-while
print("-------------")
var num2 = 10


repeat{
    
    print(num2)
    
}while num2 > 10



// funções



func olaMundo(){
    print("Ola Mundo")
}

olaMundo()




func olaMundo2(nome:String){
    print("Ola Mundo \(nome)")
}


olaMundo2(nome: "Gonçalo")


func olaMundo3(nome:String, ano:Int){
    print("Ola Mundo \(nome.capitalized) no ano de \(ano)")
}


olaMundo3(nome: "gONÇALO", ano:2026)



func soma2(val1:Int, val2:Int){
    
    print("A soma de \(val1) com \(val2) é \(val1+val2)")
    
}



soma2(val1: 20, val2: 20)


for _ in 0...100{
    
}

// _ -> ausencia de var


func soma(_ val1:Int,mais val2:Int){
    
    print("A soma de \(val1) com \(val2) é \(val1+val2)")
    
}



soma2(val1: 20, val2: 20)
soma(12, mais: 21)






func soma2(_ val1:Int,mais val2:Int) -> Int{
    let soma = val1 + val2
    return soma
}

print(soma2(22, mais: 33))



func soma3(_ val1:Int,mais val2:Int) -> Int{
        val1 + val2
}


let n = 21
print(soma3(312, mais: n))


let res_soma = soma3(312, mais: n)
print("A soma de \(312) com \(n) é \(res_soma)")














/*
 
 for
    for
        for
            for
 
  9*9     10*10     11*11
 6561 -> 10 000  -> 14641
 
 O(1)
 O(log2 n)
 O(n log2 n)
 O(n)
 O(n2)
 
  X X X X
  X X X X
  X X X X
  X X X X
 
 

 */
