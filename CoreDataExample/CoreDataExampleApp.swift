//
//  CoreDataExampleApp.swift
//  CoreDataExample
//
//  Created by Pratik Lad on 21/04/25.
//

import SwiftUI

@main
struct CoreDataExampleApp: App {
    @StateObject private var storeCoordinator = CoreDataManager()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, storeCoordinator.container.viewContext)
        }
    }
}
