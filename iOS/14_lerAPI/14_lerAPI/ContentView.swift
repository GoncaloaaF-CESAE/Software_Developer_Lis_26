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
            Text(vm.text)
            
        }
        .padding()
        .onAppear {
            vm.api.loadPost(with: 1)
        }
    }
}

#Preview {
    ContentView()
}
