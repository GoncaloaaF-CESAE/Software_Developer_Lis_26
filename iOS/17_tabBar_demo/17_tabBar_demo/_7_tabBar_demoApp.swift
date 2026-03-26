//
//  _7_tabBar_demoApp.swift
//  17_tabBar_demo
//
//  Created by Gonçalo Feliciano on 25/03/2026.
//

import SwiftUI
import SwiftData

@main
struct _7_tabBar_demoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
