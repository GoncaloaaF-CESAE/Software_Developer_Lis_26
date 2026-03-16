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
    
    var text: String = "Load Post"
    ///private var api = APIHandler(baseURL: "https://jsonplaceholder.typicode.com")
    var post:Post?
    var allPosts:Posts = []
    var showPost = true
    
    var id = 1 {
        didSet {
            Task {
                await loadPost()   
            }
        }
    }
    
    
    
    func loadPost() async{
      
        self.post = await APIHandler.shared.loadPost(with: id)
        

    }
    

    func loadAllPost() async{
      
        allPosts = await APIHandler.shared.loadAllPost()
        

    }
    
}
