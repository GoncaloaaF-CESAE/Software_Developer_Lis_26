//
//  Todo.swift
//  16_swiftData
//
//  Created by Gonçalo Feliciano on 25/03/2026.
//



import SwiftData


@Model
class Todo{
    
    var title: String
    var isCompleted: Bool
    
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
}
