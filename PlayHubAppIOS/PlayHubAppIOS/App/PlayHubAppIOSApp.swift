//
//  PlayHubAppIOSApp.swift
//  PlayHubAppIOS
//
//  Created by NadunikaSharindi on 2026-07-08.
//

import SwiftUI

@main
struct PlayHubAppApp: App {
    // Read the saved name
        @AppStorage("playerName") private var playerName = ""
    var body: some Scene {
        WindowGroup {
            // If the name is empty, show the Welcome screen
            if playerName.isEmpty {
                WelcomeView()
            } else {
                // Otherwise, load the normal 4-tab shell
                MainTabView()
            }
        }
    }
}
