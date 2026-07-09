//
//  WelcomeView.swift
//  PlayHubAppIOS
//
//  Created by NadunikaSharindi on 2026-07-08.
//

import SwiftUI

struct WelcomeView: View {
    // This will save the name permanently using UserDefaults
    @AppStorage("playerName") private var storedName = ""
    @State private var nameInput = ""

    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)

            Text("Welcome to PlayHub!")
                .font(.largeTitle)
                .bold()

            Text("Enter your player name to begin:")
                .font(.headline)
                .foregroundColor(.secondary)

            TextField("Player Name", text: $nameInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
                .multilineTextAlignment(.center)

            Button(action: {
                // Only save if the input is not just empty spaces
                let trimmedName = nameInput.trimmingCharacters(in: .whitespaces)
                if !trimmedName.isEmpty {
                    storedName = trimmedName
                }
            }) {
                Text("Start Playing")
                    .font(.title2)
                    .bold()
                    .padding()
                    .frame(maxWidth: 200)
                    .background(nameInput.trimmingCharacters(in: .whitespaces).isEmpty ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
            }
            // Disable the button until they type a name
            .disabled(nameInput.trimmingCharacters(in: .whitespaces).isEmpty)
        }
        .padding()
    }
}
