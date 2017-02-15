//
//  File.swift
//  Day 8 Task
//
//  Created by Angela Montierth on 2/15/17.
//  Copyright © 2017 Angela Montierth. All rights reserved.
//

import Foundation
import CoreData

import CoreData

class Stack {
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Day 8 Task")
        container.loadPersistentStores() { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}
