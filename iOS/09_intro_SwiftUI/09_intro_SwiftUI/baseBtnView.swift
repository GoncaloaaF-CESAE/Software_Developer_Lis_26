//
//  baseBtnView.swift
//  09_intro_SwiftUI
//
//  Created by Gonçalo Feliciano on 04/03/2026.
//
// 26,7 por letra

import SwiftUI

struct BaseBtnView: View {
    var lbl:String
    var icon:String
    var horizontal = true
    var body: some View {
  
        if horizontal{
            HStack{
                Image(systemName: icon)
                Text(lbl)
            }.font(.default)
                .bold()
                .padding(.horizontal,30)
                .padding(.vertical, 10)
            //.padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(Capsule())
            
        }else{

        VStack{
            Image(systemName: icon)
            Text(lbl)
        }.font(.title)
            .bold()
            .padding(.horizontal,30)
            .padding(.vertical, 10)
           //.padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }

    
    
        

    }// var body
    
    
    
}

#Preview {
    BaseBtnView(lbl: "Prefil", icon: "person.crop.circle")
}
