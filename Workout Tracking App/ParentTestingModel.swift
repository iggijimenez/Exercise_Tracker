////
////  ParentTestingModel.swift
////  Workout Tracking App
////
////  Created by jimenez on 4/8/23.
////
//
//import CoreData
//
//// Define the "Parent" entity
//class Parent: NSManagedObject {
//    @NSManaged var name: String
//    @NSManaged var age: Int16
//    @NSManaged var children: NSSet
//}
//
//// Define the "Child" entity
//class Child: NSManagedObject {
//    @NSManaged var name: String
//    @NSManaged var age: Int16
//    @NSManaged var parent: Parent
//}
//
//
//// Set up the CoreData stack
//class CoreDataStack {
//    lazy var persistentContainer: NSPersistentContainer = {
//        let container = NSPersistentContainer(name: "MyApp")
//        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//            if let error = error as NSError? {
//                fatalError("Unresolved error \(error), \(error.userInfo)")
//            }
//        })
//        return container
//    }()
//    
//    lazy var context: NSManagedObjectContext = {
//        return persistentContainer.viewContext
//    }()
//    
//    
//    // Create a new "Parent" object
//    let parent = Parent(context: CoreDataStack().context)
//    parent.name = "John"
//    parent.age = 35
//    
//    // Create some new "Child" objects
//    let child1 = Child(context: CoreDataStack().context)
//    child1.name = "Samantha"
//    child1.age = 8
//    child1.parent = parent
//    
//    let child2 = Child(context: CoreDataStack().context)
//    child2.name = "Michael"
//    child2.age = 5
//    child2.parent = parent
//    
//    // Save the objects to the persistent store
//    try? CoreDataStack().context.save()
//    
//}
