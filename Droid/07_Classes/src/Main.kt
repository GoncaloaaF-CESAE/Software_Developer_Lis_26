
fun main() {


    val c = Carro("Audi", "R8")
    val c2 = Carro("Audi", "R8")


    //println(c.marca)
    //println(c.modelo)
    println(c)

    c.marca = "BMW"

    println(c)



    println("-------------------")
    var c3 = c // copy ref

    println("c3: $c3")
    println("c : $c")

    c3.marca = "Audi"

    println("c3: $c3")
    println("c : $c")


    println(c.equals(c3))
    println(c == c3)


    val c4 = Carro2("Audi", "R8", 21331.0)

    println(c4)

    val c5 = Carro2("Audi", "R8")

    println(c5)


    println("-------------------")


    var c6 = Carro3("Audi", "R8")

    println(c6)

    c6.func_dataClass()


    c6.marca = "BMW"

    println(c6)
    //c6.modelo = "R8"



    println("-------------------")


    var c7 = Carro3("Audi", "R8")
    var c8 = c7

    println("c7 : $c7")
    println("c8 : $c8")


    c8.marca = "BMW"

    println("c8 : $c8")
    println("c7 : $c7")

    println("-------------------")

    var c9 = Carro3("Audi", "R8")
    var c10 = Carro3("Audi", "R8")

    println(c9 == c10)

    println(c8 == c7)

    println("-------------------")

    val p1 = Pessoa("Maria", 2000)


    println(p1.idade)
    p1.idade = 123

    println(p1.idade)

}
