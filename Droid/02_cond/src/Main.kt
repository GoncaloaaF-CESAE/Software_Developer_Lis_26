
fun main() {

    var idade = 18

    if (idade >= 18) {
        println("Adulto")
    }else if (idade > 12) {
        println("teen")
    }else{
        println("criança")
    }


   var mes = 14


    when (mes) {
        1 -> println("Jan")
        2 -> println("Feb")
        3 -> println("Mar")
        4 -> println("Abril")
        5 -> println("May")
        6 -> println("Jun")
        7 -> println("Jul")
        8 -> println("Aug")
        9 -> println("Sep")
        10 -> println("Oct")
        11 -> println("Nov")
        12 -> println("Dec")
        else -> println("Mês Invalido")
    }

    mes = 1

    var res = when (mes) {
        1 -> "Jan"
        2 -> "Feb"
        3 -> "Mar"
        4 -> "Apr"
        5 -> "May"
        6 -> "Jun"
        7 -> "Jul"
        8 -> "Aug"
        9 -> "Sep"
        10 -> "Oct"
        11 -> "Nov"
        12 -> "Dec"
        else -> "Unknown"
    }

    println("o mes selecionado foi: $res")


    mes = 3
    when (mes) {
        1,2,3,4 -> println("Bloco 1")
        5, 6 -> println("Bloco 2")
        else -> println("Bloco 3")
    }

    mes = 7
    var res2 = when (mes) {
        1,2,3,4 -> "Bloco 1"
        5, 6 -> "Bloco 2"
        else -> "Bloco 3"
    }

    println(res2)
println("--------------")

    idade = -3
    var teste = when {
        idade >= 18 -> "Adulto"
        idade >= 12 -> "Teen"
        idade >= 0 -> "Criança"
        else -> "Idade invalida"
    }

    print(teste)


}