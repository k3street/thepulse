//
//  GooglePersonEntity+CoreDataProperties.swift
//  
//
//  Created by Kimate Richards on 4/26/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension GooglePersonEntity {

    @NSManaged var fullName: String?
    @NSManaged var givenName: String?
    @NSManaged var familyName: String?
    @NSManaged var userId: String?
    @NSManaged var tokenID: String?
    @NSManaged var email: String?

}
