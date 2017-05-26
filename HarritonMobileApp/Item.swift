//
//  Item.swift
//  ItemTracker
//

import UIKit


class Item {
    
    //MARK: Properties
    
    var title: String
    var desc: String
    var link: String
    var date: String
    
    //MARK: Initialization
    
    init?(title: String, desc: String, link: String, date: String) {
        
        // The name must not be empty
        guard !title.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.title = title
        self.desc = desc
        self.link = link
        self.date = date
        
    }
}
