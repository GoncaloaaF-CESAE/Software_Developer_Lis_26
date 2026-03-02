
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


    val c4 = Carro2("Audi", "R8", -31.0)









}