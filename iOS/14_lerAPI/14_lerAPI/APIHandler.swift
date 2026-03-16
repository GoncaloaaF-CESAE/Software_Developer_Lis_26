//
//  APIHandler.swift
//  14_lerAPI
//
//  Created by Gonçalo Feliciano on 16/03/2026.
//

import Foundation



class APIHandler{
    
    var baseURL:URL // https://jsonplaceholder.typicode.com
    
    init(baseURL: String) {
        //logica para validar URL
        self.baseURL = URL(string: baseURL)!
    }
    

    func loadPost(with id:Int){
        print(baseURL)
        self.baseURL.appendPathComponent("posts")
        self.baseURL.appendPathComponent("\(id)")
        
        print(baseURL)

    }
    
}
