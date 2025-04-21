//
//  CoreDataManager.swift
//  CoreDataExample
//
//  Created by Pratik Lad on 21/04/25.
//
import CoreData

final class CoreDataManager: ObservableObject {
    let container: NSPersistentContainer = NSPersistentContainer(name: "Database")
    
    init() {
        container.loadPersistentStores { descriptor, error in
            debugPrint(descriptor.url?.absoluteString)
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
}
