//
//  Student+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Pratik Lad on 21/04/25.
//
//

import Foundation
import CoreData

extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Student : Identifiable {

}
