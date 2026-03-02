
fun main() {

    val listaNum = arrayOf(1,2,3,4,5)

    println(listaNum[0])

    println("------------")
    for (num in listaNum) {
        println(num * 3)
    }
    println("------------")
    // println(listaNum[10])
    println(listaNum.get(0))
   // println(listaNum.get(10))

    listaNum[0] = 99
    println(listaNum[0])

    listaNum.set(0, 88)

    println(listaNum[0])


    println("------------")
    val nomes = arrayOf("Sem nome")

    println(nomes.size)

    for (nome in nomes) {
        println(nome)
    }

    println("------------")

    val nomes2 = Array(10) {"Sem nome"}

    println(nomes2.size)

    for (nome in nomes2) {
        println(nome)
    }


    println("------------")

    val notas = Array<Double>(10) { 0.0 }

    println(nomes2.size)

    for (nome in nomes2) {
        println(nome)
    }



}