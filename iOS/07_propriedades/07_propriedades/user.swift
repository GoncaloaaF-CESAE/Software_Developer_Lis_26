//
//  user.swift
//  07_propriedades
//
//  Created by Gonçalo Feliciano on 25/02/2026.
//



class Login{
    
    var ok = false
    var pwd: String = "" {
        
        didSet {
            if pwd.count < min{
                ok = true
            }else {
                
                ok = false
            }

        }
        
    }
    var usr: String = ""
    private var min: Int = 6
        
}
