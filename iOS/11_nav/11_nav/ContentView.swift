//
//  ContentView.swift
//  11_nav
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI


struct User{
    var nome:String
    var idade:Int
    
}
struct ContentView: View {
    var my_user = User(nome: "Rita", idade: 30)
    
    var body: some View {
      
        NavigationStack{
            
            VStack {
            

                NavigationLink {
                    InfoView(user: my_user)
                } label: {
                    BtnView()
                }

            
                NavigationLink {
                    ContactosView()
                } label: {
                    BtnView(img: "pencil.circle.fill", txt: "Pagina 2")
                }
                 
     
            }// HStack
            .navigationTitle("pagina 1")
            .navigationBarTitleDisplayMode(.inline)
                
        }//NavigationStack
       
    }
}

#Preview {
    ContentView()
}
