
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



    println("------------")

    var iArr = IntArray(10) { 0 }
    DoubleArray(21){2.1}

    var ArrInts = Array(10) { 0 }
    println(iArr.size)
    println(iArr)
    println(ArrInts)

    println("------list------")



    var lst:List<Int> = listOf(1,4,2)
    println(lst.size)
    println(lst)
    println("------------")
    var notas2: MutableList<Double> = mutableListOf<Double>()

    println(notas2)

    notas2.add(0.1)
    notas2.add(1.1)
    notas2.add(2.1)
    notas2.add(3.1)
    notas2.add(4.1)
    notas2.add(5.1)
    println(notas2)

    println(notas2.removeAt(2))

    println(notas2.remove(99.1))
    println(notas2)

    println(notas2.contains(0.3))

    

    notas2.clear()

    println(notas2)


}


class agenda(ctList:MutableList<Int>){


}


class Pessoa(private var _nome: String,
             private var _apelido: String) {
   // nome ≠ _nome
    private var _media: Double = Double.NaN
    private var notas = mutableListOf<Double>()

    var media: Double
        get() {
            if (_media.isNaN()) {
                // calc media
                // atribuir meia a _media
                _media = calcMedia3() // aqui

                return this._media // nao sei se a media e NaN
                //return this.media
            }

            return _media
        }
        set(value) {
            _media = value
        }

    var nome: String
        get() = this._nome
        set(value) {
            _nome = value

            /*
            if (value.isNotEmpty()) {
                _nome = value
            }
            */
            /*
            if (value.isEmpty()) {
                throw IllegalArgumentException()
            }
            _nome = value

             */
        }



    fun calcMedia(){
        this.media = this.notas.average()
    }

    fun calcMedia2(): Double{
        return notas.average()
    }

    fun calcMedia3(): Double{
        this.media = this.notas.average()
        return this.media
    }


}