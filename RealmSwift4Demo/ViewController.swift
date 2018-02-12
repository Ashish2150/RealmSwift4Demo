//
//  ViewController.swift
//  RealmSwift4Demo
//
//  Created by Ashish Kumar Mourya on 04/02/18.
//  Copyright © 2018 Ashish Kumar Mourya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var currentItem: Item? = nil
    
    @IBOutlet weak var txtValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Database Operation
    
    /// Insert Data
    @IBAction func InsertData(_ sender: Any) {
        let item = Item()
        
        if currentItem == nil {
            item.ID = DBManager.sharedInstance.getDataFromDB().count
        }
        item.textString = txtValue.text!
        DBManager.sharedInstance.addData(object: item)
        debugPrint("Data added Successfully")
        
    }

    ///Fetch All Data
    @IBAction func fetchAllData(_ sender: Any) {
        let allData = DBManager.sharedInstance.getDataFromDB()
        
        for item in allData {
            print("\(item.ID) snd item string is: \(item.textString)")
        }
        
    }
    

}

