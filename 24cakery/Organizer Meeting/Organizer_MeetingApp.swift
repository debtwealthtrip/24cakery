//
//  Organizer_MeetingApp.swift
//  Organizer Meeting
//
//  Created by sam on 11/19/23.
//

import SwiftUI
import SwiftData

@main
struct Organizer_MeetingApp: App {
 
  @StateObject private var shareData = ShareData()
  
  
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
            HomeView(shareData: shareData)
        }
        .modelContainer(sharedModelContainer)
    }
}
