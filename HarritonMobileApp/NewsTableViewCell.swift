//
//  NewsTableViewCell.swift
//  SwiftXMLParsingDemo
//
//  Created by David DeBellis (student HH) on 5/26/17.
//  Copyright © 2017 creativeinfoway. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    //MARK: Properties

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var link: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
