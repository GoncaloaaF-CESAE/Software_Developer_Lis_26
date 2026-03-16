//
//  APIHandler.swift
//  14_lerAPI
//
//  Created by Gonçalo Feliciano on 16/03/2026.
//

import Foundation

class APIHandler{
    
    static var shared = APIHandler(baseURL: "https://jsonplaceholder.typicode.com") // <- ?
    
    var baseURL:URL // https://jsonplaceholder.typicode.com
    
    init(baseURL: String) {
        //logica para validar URL
        self.baseURL = URL(string: baseURL)!
    }
    

    func loadPost(with id:Int) async -> Post{
        var baseURL = baseURL
        baseURL.appendPathComponent("posts")
        baseURL.appendPathComponent("\(id)")

        
        let (data, _) = try! await URLSession.shared.data(from: baseURL)
        
        let post = try! JSONDecoder().decode(Post.self, from: data)
        
        return post
        
    }
    
    
    func loadAllPost() async -> Posts{
        var baseURL = baseURL
        baseURL.appendPathComponent("posts")

        let (data, _) = try! await URLSession.shared.data(from: baseURL)
        
        let posts = try! JSONDecoder().decode(Posts.self, from: data)
        
        return posts
        
    }
    
}
