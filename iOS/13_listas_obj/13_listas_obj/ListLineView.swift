//
//  ListLineView.swift
//  13_listas_obj
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct ListLineView: View {
    
    var user:User
    
    var body: some View {
        HStack{
            
            Image(systemName: user.icon)
                .resizable()
                .frame(width: 35, height: 35)
                .padding(.trailing, 15)
            
            VStack(alignment: .leading){
                Text(user.nome)
                Text("\(user.id)")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    ListLineView(user: User(nome: "Nome Do user"))
}
