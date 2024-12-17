//
//  Deadlock_HandbookApp.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680

import SwiftUI

@main
struct Deadlock_HandbookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
