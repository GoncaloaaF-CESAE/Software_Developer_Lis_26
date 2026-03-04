import Cocoa



/*
 
 var - variaveis
 let - constantes
 
 */

var nome = "Gonçalo"
let idade = 24
let altura = 1.70
let media:Float = 1.231
let teste = true
let letra:Character = "c"




nome = "Rui"
//idade = 23

//nome = 32

let soma = altura + Double(media)





// incremeto

var num = 10

num += 1
num *= 2
num -= 2
num /= 2
num %= 2



var aluno = ("Gonçalo",2015, true)

aluno.0
aluno.1
aluno.2

aluno.0 = "Ricardo"

aluno.0



var aluno2 = (nome:"Gonçalo", ano:2015, aprovado:true)

aluno2.0
aluno2.nome


var aluno3:(String, Int, Bool)

aluno3 = ("Gonçalo",2015, true)

aluno3 = (nome:"Gonçalo", ano:2015, aprovado:true)

aluno3


var aluno4:(nome:String, ano:Int, aprovado:Bool)

aluno4 = ("Gonçalo",2015, true)

aluno4 = (nome:"Gonçalo", ano:2015, aprovado:true)

aluno4 = (ano:2015, nome:"Gonçalo", aprovado:true)

aluno4






var nome50 = "nome"
var nome_50 = "nome"
var _nome50 = "nome"

// var 1Nome = "nome"

var 汉字 = "nome"

//var π = 3.1415

var π = "Ola mundo"
var 🐶 = "Boby"
var nome$ = "nome"


//             2 147 483 647
// 9 223 372 036 854 775 807



print(Int32.max)



func soma(a:Int, b:Int){
    
    a+b
}


func mymax (_ num1:Int secondNumber num2: Int) -> Int {
   
   /* local variable declaration */
   var result;
 
   if (num1 > num2) {
      result = num1;
   } else {
      result = num2;
   }
 
   return result;
}


mymax(12, secondNumber: 42)
