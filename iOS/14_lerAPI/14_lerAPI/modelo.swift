//
//  modelo.swift
//  14_lerAPI
//
//  Created by Gonçalo Feliciano on 16/03/2026.
//

/*
{
  "userId": 1,
  "id": 1,
  "title": "",
  "body": ""
}
*/


typealias Posts = [Post]


struct Post:Codable{
    
    var userId:Int
    var id:Int
    var title:String
    var body:String

}


