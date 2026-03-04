import Cocoa


func olaMundo(nome:String) -> String {
    "Ola Mundo, \(nome)"
}



// "todas" as var/let em swift tem valor

var foo = ["teste":"valor"]

var resp = foo["teste"] //  foo["teste"]

var resp2:String? = foo["key invalida"] // nil -> null em swift


var resp3:String? = olaMundo(nome: "Gonçalo")


var n1:Int? = 10    // -> opt(10)
var n2:Int?         //-> nil
var n3:Int          // ->


var n4:Int? = 10


var n5:Int? = 10

n5 = 412
print(n5)

n5 = nil
print(n5)



var n6 = 10


n6 = 412
print(n6)

// n6 = nil -> erro
// print(n6)



// var foto:String? = "foto1" //  -> foto de prefil definida pelo usr

// var foto2:String? = nil //  -> foto de prefil nao definida pelo usr

// Int ≠ Int?

print("---")
var n7:Int? = nil
print(n7)
// print(n7!) // erro se a var for nil



if let nova_var = n7{
    
    print(nova_var)
    
}else {
    
    print("a var nao tem valor")
}


print("-----")

n7 = 12

if let n7{  // if let n7 = n7{
    
    print(n7)
    
}else {
    
    print("a var nao tem valor")
}


print("-----")
print("-----")


var foto:String? = "foto1"
var foto2:String?


print(foto ?? "foto default")

foto = nil


print(foto ?? olaMundo(nome: "Gonçalo"))


print("-----")
print("-----")



func olaMundo2(nome:String? = nil) -> String {
    
    guard let nome else {
       return "Ola Mundo, desconhecido"
    }
    
    return "Ola Mundo, \(nome)"
    
}



func auth(usr:String?, pwd:String?) {  // -> Bool {
    
    guard let usr, usr.count > 3 else{
        print("usrname não fornecido");
        return
    }
    
    guard let pwd, pwd.count > 3 else{
        print("password não fornecida");
        return
    }
    
    
    print("Logica validação")
}



/*
 
 !
 ??
 if let
 guard let
 
 */

print(olaMundo2())

print(olaMundo2(nome: "Gonçalo"))


print(olaMundo2(nome: nil))


// func so pode ser executada se intPos > 0
func teste(intPos:Int){

    if intPos < 0{
        print("intPos e menor que 0")
        return
    }
    
    print("corpo da func")
    
    
}



teste(intPos: -21)
print("--")
teste(intPos: 21)
