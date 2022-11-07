//
//  pruebaApp.swift
//  Shared
//
//  Created by IMAC17 on 13/09/22.
//

import SwiftUI

@main
struct pruebaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
