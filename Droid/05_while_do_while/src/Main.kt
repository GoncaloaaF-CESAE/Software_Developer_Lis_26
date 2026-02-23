
fun main() {

    var i = 10

    while (i > 0) {
        println(i)
        i--
    }

    println("--------------------")
    var j = -1

    do {
        println(j)
        j--
    }while (j > 0)


    println("--------------------")

    var k = 100
    while (k > 0) {

        if(k == 50){
            println("o loop vai terminar")
            break
        }

        if (k == 60){
            println("salta para a próxima volta do loop")
            continue
        }

        println(k)
        k -= 10

    }




}