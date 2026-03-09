//
//  ContentView.swift
//  12_listas
//
//  Created by Gonçalo Feliciano on 09/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    // let nomes = ["Ana", "Bruno", "Carla", "Daniel", "Eduardo", "Filipa", "Goncalo", "Helena", "Ines", "Joao", "Ana"]
    
    @State var nomes = ["Ana", "Bruno", "Carla"]
    
    var body: some View {
        NavigationStack{
            VStack {
                

                List{
                    
                    Section(header: Text("Lista de Utilizadors")){
                        
                        ForEach(nomes, id: \.self){ nome in
                            
                            Text(nome)
                            
                        }.onDelete { IndexSet in
        
                            nomes.remove(atOffsets: IndexSet)
                        }
                        .onMove { origem, destino in
                            
                            nomes.move(fromOffsets: origem, toOffset: destino)
                        }
                        
                    }
                     /*
                    Section {
                        ForEach(nomes, id: \.self){ nome in
                            
                            Text(nome)
                            
                        }
                    } header: {
                        Text("Section Header")
                    } footer: {
                        Text("Section footer")
                    }
*/
    
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
