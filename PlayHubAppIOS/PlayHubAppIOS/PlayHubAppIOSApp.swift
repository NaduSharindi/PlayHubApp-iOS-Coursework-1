//
//  PlayHubAppIOSApp.swift
//  PlayHubAppIOS
//
//  Created by NadunikaSharindi on 2026-07-08.
//

import SwiftUI
import CoreData

@main
struct PlayHubAppIOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
