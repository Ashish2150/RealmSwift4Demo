//
//  DBManager.swift
//  RealmSwift4Demo
//
//  Created by Ashish Kumar Mourya on 12/02/18.
//  Copyright © 2018 Ashish Kumar Mourya. All rights reserved.
//

import UIKit
import RealmSwift

class DBManager {
    private var database: Realm
    static let sharedInstance = DBManager()
    
    private init() {
        database = try! Realm()
    }

    /// Add Data into database
    
    func addData(object: Item){
        try! database.write {
            database.add(object, update: true)
        }
    }
    
    /// Retrive Data from database
    
    func getDataFromDB() -> Results<Item> {
        let results:Results<Item> = database.objects(Item.self)
        debugPrint(Realm.Configuration.defaultConfiguration.fileURL ?? "")
        return results
    }
    
    /// Delete all from database
    
    func deleteAllDatabase(){
        
        try! database.write {
            database.deleteAll()
        }
    }
    
    ///Delete particular data from Database
    
    func deleteItem(object: Item){
        
        try! database.write {
            deleteItem(object: object)
        }
    }
    
    
    
}
