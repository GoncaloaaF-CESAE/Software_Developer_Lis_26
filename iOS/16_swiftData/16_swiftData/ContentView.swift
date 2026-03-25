//
//  ContentView.swift
//  16_swiftData
//
//  Created by Gonçalo Feliciano on 25/03/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    @Query private var todos: [Todo] // Select * from Todo

    var body: some View {
        NavigationView {
            List {
                ForEach(todos) { todo in
                    NavigationLink {

                    } label: {
                        Text(todo.title)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        }
    }

    private func addItem() {
      
            let todo = Todo(title: "todo 1")
            modelContext.insert(todo)
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(todos[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Todo.self, inMemory: true)
}
