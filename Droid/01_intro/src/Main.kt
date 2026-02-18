
fun main() {

    println("Hello World! 1")
    print("Hello World! 2\n")
    println("Hello World! 2")

    var nome = "Gonçalo"
    val ano: Int = 2026

    val n1 = 10
    val n2 = 23.23f

    val soma = n1 + n2

    println(soma)




    nome = "Gonçalo"
    println("Ola Mundo " + nome)

    println("Ola Mundo " + nome + " no ano " + ano)

    println("Ola Mundo ${nome.length} no ano $ano")

    val myString = "The Quick Brown Fox Jumps Over a Lazy Dog"

    println(myString)
    println(myString.length)
    println(myString.uppercase())
    println(myString.lowercase())

    val myString2 = "Lazy Dog"
    val myString3 = "The Quick Brown Fox Jumps Over a Lazy Dog"

   // println(myString.compareTo(myString3))
   // println(myString.compareTo(myString2))
    println(myString.compareTo(myString2))

    println( myString.indexOf(myString2))

}