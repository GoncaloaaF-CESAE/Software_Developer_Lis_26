//
//  BtnView.swift
//  11_nav
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct BtnView: View {
    var img = "globe"
    var txt = "Hello, world!"
    
    var body: some View {
        HStack {
            Image(systemName: img)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(txt)
        }
    }
}

#Preview {
    BtnView()
}
