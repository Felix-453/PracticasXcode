//
//  MyPrimerClaseApp.swift
//  Shared
//
//  Created by IMAC17 on 04/10/22.
//

import SwiftUI

@main
struct MyPrimerClaseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
