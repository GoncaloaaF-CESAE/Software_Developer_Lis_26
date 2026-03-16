//
//  ContentViewModel.swift
//  13_listas_obj
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import Observation



@Observable
class ContentViewModel {
    
    var lista = [
                 User(nome:"User_Ana"),
                 User(nome:"User_Bruno", icon: "person.fill"),
                 User(nome:"User_Carla")
    ]
    
}
