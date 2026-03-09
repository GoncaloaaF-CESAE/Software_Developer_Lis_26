//
//  InfoView.swift
//  11_nav
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct InfoView: View {
    var user:User
    
    var body: some View {
        
        
        VStack{
            Text(user.nome)
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .navigationTitle("prefil de \(user.nome)")
        .navigationBarTitleDisplayMode(.large)
    }
}



#Preview {
    InfoView(user: User(nome: "Gonçalo", idade: 21))
}

