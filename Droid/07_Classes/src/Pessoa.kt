class Pessoa(private var _nome: String, var anoNascimento: Int) {

    var idade: Int
        get() = (2026 - this.anoNascimento)

        set(value) {
            this.anoNascimento = 2026 - value
        }

    var nome: String
        get() = this._nome

        private set(value) {

            this._nome = value
        }



    /*
    fun calcIdade(): Int{
        return 2026 - this.anoNascimento

    }
     */
}



// bla bla bla :Lista