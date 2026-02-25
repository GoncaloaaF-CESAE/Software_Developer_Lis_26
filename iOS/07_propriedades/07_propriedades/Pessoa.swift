//
//  Pessoa.swift
//  07_propriedades
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//


class Pessoa{
    
    static var count = 0
    
    var nome:String{
        
        set{
            
            let aux = newValue.split(separator: " ") // "foo bar" -> ["foo", "bar"]/ "foo bar boo" -> ["foo", "bar", "boo"]
            if aux.count != 2 {
                print("o nome deve ter dois nomes")
                //FIXME: resolver depois de ver herança/protocolos -> lançar um erro
                return
            }
            self.nome_proprio = String(aux[0])
            self.apelido = String(aux[1])
            
        }
        
        get{

            "\(nome_proprio) \(apelido)"
        }
        
        
    }
    
    private var nome_proprio:String
    private var apelido:String
    private var anoNascimento:Int
    lazy var idade:Int = {
        if anoNascimento < 1926 {
            //FIXME: resolver depois de ver herança/protocolos -> lançar um erro
            return -1
        }
    
        return 2026 - anoNascimento
        
    }()
    
    init(nome:String,anoNascimento:Int ) {
        
        let aux = nome.split(separator: " ") // "foo bar" -> ["foo", "bar"]/ "foo bar boo" -> ["foo", "bar", "boo"]
        if aux.count != 2 {
            print("o nome deve ter dois nomes")
            //FIXME: resolver depois de ver herança/protocolos -> lançar um erro
            self.nome_proprio = ""
            self.apelido = ""
            self.anoNascimento = 0
            return
        }
        
        
        self.nome_proprio = aux[0].description
        self.apelido = aux[1].description
        self.anoNascimento = anoNascimento
        

        
        Pessoa.count += 1
        
    }
    
    
    deinit{
        print("deinit")
    }

}
