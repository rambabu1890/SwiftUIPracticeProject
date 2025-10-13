//
//  BookxpertAppSwiftUIApp.swift
//  BookxpertAppSwiftUI
//
//  Created by Rambabu on 24/03/25.
//

import SwiftUI

@main
struct BookxpertAppSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NYCSchoolListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
