//
//  ContentView.swift
//  10_MVVM
//
//  Created by Gonçalo Feliciano on 06/03/2026.
//

//  guess the number 

import SwiftUI

struct ContentView: View {
   

    @StateObject var vm = ContentViewModel()
    
    
    var body: some View {
        VStack {
         
            Text(vm.msg)
                .frame(width: 200)
            TextField("msg", text: $vm.msg_TF)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
            
            HStack {
                Button(role: .destructive) {
                    vm.testeMsg()
                }label: {
                    Text("Press Me")
                }
                    
                Spacer().frame(width: 50)
                
                Button {
                    vm.updateMsg()
                }label: {
                    Text("mudar Texto")
                }
                .disabled(vm.msg_TF.isEmpty)
                
            }// Hstack
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)

    } // body: some View
}

#Preview {
    ContentView()
}
