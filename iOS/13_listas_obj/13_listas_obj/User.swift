//
//  User.swift
//  13_listas_obj
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import Foundation
import Combine


struct User:Identifiable{
    var id = UUID()
    var nome:String
    var icon = "person.circle.fill"
}
