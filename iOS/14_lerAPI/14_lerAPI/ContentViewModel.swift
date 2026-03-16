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
    
    var showPost = true
    var id = 1
    
    
    
    func loadPost() async{
      
        self.post = await APIHandler.shared.loadPost(with: 1)
        

    }
    

    func loadAllPost() async{
      
        await APIHandler.shared.loadAllPost()
        

    }
    
}
