//
//  InfoView.swift
//  11_nav
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack{
            NavigationLink("pagina 3") {
                Text("Pagina 3")
            }
            
            Text("Pagina 2")
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .navigationTitle("pagina 2")
    }
}

#Preview {
    InfoView()
}
