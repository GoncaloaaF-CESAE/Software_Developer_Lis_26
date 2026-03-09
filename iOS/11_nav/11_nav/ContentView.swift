//
//  ContentView.swift
//  11_nav
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            HStack {
                
                NavigationLink {
                    InfoView()
                } label: {
                    HStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, world!")
                    }
                }

            }// HStack
            .navigationTitle("pagina 1")

         
        }//NavigationStack
       
    }
}

#Preview {
    ContentView()
}
