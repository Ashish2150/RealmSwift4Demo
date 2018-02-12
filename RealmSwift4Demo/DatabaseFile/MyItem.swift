//
//  MyItem.swift
//  RealmSwift4Demo
//
//  Created by Ashish Kumar Mourya on 12/02/18.
//  Copyright © 2018 Ashish Kumar Mourya. All rights reserved.
//

import UIKit
import RealmSwift

class Item: Object {
    
    @objc dynamic var ID = -1
    @objc dynamic var textString = ""
    
    override static func primaryKey() -> String? {
        return "ID"

    }
}
