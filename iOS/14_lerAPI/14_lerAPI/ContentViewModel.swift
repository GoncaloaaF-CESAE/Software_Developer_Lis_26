//
//  ContentViewModel.swift
//  14_lerAPI
//
//  Created by Gonçalo Feliciano on 16/03/2026.
//

import Foundation


import Observation



@Observable
class ContentViewModel {
    
    var text: String = "Ola Mundo"
    var api = APIHandler(baseURL: "https://jsonplaceholder.typicode.com")
    
}
