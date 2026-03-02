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
    var preco: Double
) {
    init {
        
    }

    override fun toString(): String {
        return "marca: $marca, modelo: $modelo"
    }

}