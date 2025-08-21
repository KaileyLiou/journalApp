//
//  JournalAppApp.swift
//  JournalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftUI
import SwiftData

@main
struct journalAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
           
        }
        .modelContainer(for: JournalEntryModel.self)
    }
}


