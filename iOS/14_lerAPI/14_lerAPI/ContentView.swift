//
//  ContentView.swift
//  14_lerAPI
//
//  Created by Gonçalo Feliciano on 16/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var vm = ContentViewModel()
    
    var body: some View {
        VStack {
            
         
        
            Text(vm.post?.title ?? "Loading...")
            .opacity(vm.showPost ? 1 : 0)
            .frame(height: 50, alignment: .top)
            
            
            Toggle("show Post", isOn: $vm.showPost)
                .labelsHidden()
            
            Text("\(vm.id)")
            
            Stepper("post id", value: $vm.id, in: 1...15, step: 1)
                .labelsHidden()
        
            /*
            Button {
                Task {
                    await vm.loadPost()
                    
                }
            } label: {
                
                Text(vm.text)
            }
*/
            Button {
                vm.showPost.toggle()
                Task {
                    await vm.loadAllPost()
                }
            } label: {
                Text("Ler Todos")
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
