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
    var url: String
    
    //MARK: Initialization
    
    init?(title: String, desc: String, link: String, date: String, url: String) {
        
        // The name must not be empty
        guard !url.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.title = title
        self.desc = desc
        self.link = link
        self.date = date
        self.url = url
    }
}
