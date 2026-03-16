//
//  ContentView.swift
//  13_listas_obj
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct ContentView: View {
    
      @State var vm = ContentViewModel()
    
    var body: some View {
        NavigationStack{
        
            VStack {
                
                List{
                    
                    Section(header: Text("Lista de Utilizadors")){
                        
                        ForEach(vm.lista){ user in
                            
                            NavigationLink {
                                Text(user.nome)
                            } label: {
                                ListLineView(user: user)
                            }

                        }.onDelete { IndexSet in
                            vm.lista.remove(atOffsets: IndexSet)
                        }
                        .onMove { origem, destino in
                    
                            vm.lista.move(fromOffsets: origem, toOffset: destino)
                        }
                    }
    
                }// lista
                .toolbar {
                    EditButton()
                }
                .navigationTitle("Lista de Utilizadors")
                
            }
        }
    
        .padding()
            
    }
}

#Preview {
    ContentView()
}
