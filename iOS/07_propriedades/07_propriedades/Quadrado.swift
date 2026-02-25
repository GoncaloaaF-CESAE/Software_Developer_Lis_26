//
//  Quadrado.swift
//  07_propriedades
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//
import Foundation

class Quadrado{
    
    /*
     
     _lado -> var privada(convenção)
     
     _ -> descarte
     
     
     */
    
    private var _lado:Float {
        
        willSet{ // 1 - antes da alteração
            print("antes de \(_lado) ser alterado para \(newValue)")
        }
        
        // set 2  -- Alteração do valor 
        
        didSet{  // 3 - depois da alteração
            //              //original              // nova
            print("depois de \(oldValue) ser alterado para \(_lado)")
        }
        
    }
    
    
    
    
    var lado:Float{
        
        get{
            _lado
        }
        
        set{
            self._lado = newValue
        }
        
    }
    

    var area:Float{
        
        get{ // ler a var
            pow(lado, 2) // lado * lado
        }
        
        
        set{ // Escrever na var
            self.lado = sqrt(newValue)
        }
        
    }
    
    var perimetro:Float{
        
        get{ // ler a var
            return lado * 4
        }
        
        set{ // Escrever na var
            self.lado = newValue / 4
        }
    
    }
    
    
    init(lado: Float) {
        self._lado = lado
    }
    

    
}
