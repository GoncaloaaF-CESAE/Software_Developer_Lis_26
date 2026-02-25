//
//  Quadrado.swift
//  07_propriedades
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//
import Foundation

class Quadrado{
    
    var lado:Float

    var area:Float{
        
        get{ // ler a var
            return pow(lado, 2)
        }
        
        
        set{ // Escrever na var
            self.lado = sqrt(newValue)
        }
        
    }
    
    // var perimetro:Float
    
    
    init(lado: Float) {
        self.lado = lado
    }
    

    
}
