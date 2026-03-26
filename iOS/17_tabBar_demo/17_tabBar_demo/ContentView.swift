//
//  ContentView.swift
//  17_tabBar_demo
//
//  Created by Gonçalo Feliciano on 25/03/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {


    var body: some View {
        TabView {
            
            Tab("Home", systemImage: "house.fill") {
                HomeView()
                
            }
            .badge("novo conteudo")
            
            Tab("View2", systemImage: "person.crop.circle") {
                NovaView()
                
            }
            .badge(3)
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
