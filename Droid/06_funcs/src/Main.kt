
fun main() {

    olaMundo()
    olaMundo()
    soma(2,1)
    val resultado = soma2(2,5)
    println(resultado)

    soma(soma2(2,5),resultado)








    soma3(4, 5)
    soma3(4)

    soma3_def(4,5)
    soma3_def(4)
    soma3_def()
    soma3_def(val1 = 1)
    soma3_def(val2 = 2)
    soma3_def(val1 = 3, val2 = 3)

    usr("Goncalo")
    usr("Goncalo", "fotoCool")

}
fun olaMundo(){
    println("Ola Mundo")
}
fun soma(val1: Int, val2: Int) {
    val soma = val1 + val2
    println("$val1 + $val2 = $soma")
}
fun soma2(val1: Int, val2: Int): Int {
    val soma = val1 + val2
    return soma
}

fun soma3_def(val1: Int = 0, val2: Int = 0) {
    val soma = val1 + val2
    println("$val1 + $val2 = $soma")
}

fun soma3(val1: Int, val2: Int) {
    val soma = val1 + val2
    println("$val1 + $val2 = $soma")
}

fun soma3(val1: Int) {
    soma3(val1, 0)
}


fun teste(): String{
    print("nome da foto: ")
    val foto = readln()

    return foto
}

fun usr(nome: String, foto: String = teste() ) {

    println("$nome, $foto")
}


// torne este código mais fácil de manter