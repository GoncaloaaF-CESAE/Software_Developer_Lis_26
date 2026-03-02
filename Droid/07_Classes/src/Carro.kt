class Carro {
    var marca: String
    var modelo: String

    constructor(marca: String, modelo: String) {
        this.marca = marca
        this.modelo = modelo
    }

    override fun toString(): String {
        return "marca: $marca, modelo: $modelo"
    }

}



class Carro2(
    var marca: String,
    var modelo: String,
    private var preco: Double
) {
    init {
        require(preco > 0) { "Preço Invalido" }
    }

    constructor(marca: String, modelo: String): this(marca, modelo, 25000.0)


    fun funcClass(){
        println("a minha func da data class")
    }

    override fun toString(): String {
        return "marca: $marca, modelo: $modelo, preco: $preco"
    }
}

data class Carro3( var marca: String,
                   private var modelo: String){

    fun func_dataClass(){
        println("a minha func da data class")
        this.modelo = "sem modelo 2"
    }

}