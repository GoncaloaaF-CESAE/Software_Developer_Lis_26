//
//  ContentView.swift
//  09_intro_SwiftUI
//
//  Created by Gonçalo Feliciano on 04/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    //var msg = "Ola Mundo"
    @State var count = 0
    @State var nome_TF: String = ""
    @State var msg = ""
    var body: some View {
        
        VStack(alignment: .leading){
            
            
            
            Text(msg) // editar
        
            TextField("nome", text: $nome_TF)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
                
            
            Button {
                count += 1
                print("ola mundo \(count)")
                // linha 2
                msg = nome_TF
                nome_TF = ""

            } label: {
                BaseBtnView(lbl: "Prefil \(count)", icon: "person.crop.circle")
            }.disabled(nome_TF.isEmpty)
            

            
            Button {
                count += 1
                print("ola mundo \(count)")
                // linha 2
                if nome_TF != "" {
                    msg = nome_TF
                }
               
                nome_TF = ""

            } label: {
                BaseBtnView(lbl: "Prefil \(count)", icon: "person.crop.circle")
            }
            
            
            //BaseBtnView(lbl: "Remove Conta", icon: "person.crop.circle.badge.xmark")
            
            
            /*
            Spacer()
            
            Text("Ola")
                
          
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 200,height: 100)
                .clipped()
                

            
            Text(msg)
                .frame(width: 300, height: 60)
                .font(Font.largeTitle)
                .bold()
                .background(.clear)
                .foregroundStyle(.black)
                .clipShape(Capsule())
                .overlay {
                    Capsule().stroke(Color.red, lineWidth: 4)
                }
            
            Spacer()
            */
            
            
            
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
    }//  var body: some View
} // struct ContentView: View




#Preview {
    ContentView()
}
