//
//  SwiftfulThinkingBootsCampApp.swift
//  SwiftfulThinkingBootsCamp
//
//  Created by David Oteng on 11/06/2023.
//

import SwiftUI

@main
struct SwiftfulThinkingBootsCampApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
