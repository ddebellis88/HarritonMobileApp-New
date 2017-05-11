//
//  BlackBoardViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis (student HH) on 5/11/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class BlackBoardViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        webViewer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func webViewer() {
        
        let BBURL = URL(string: "https://lmsd.blackboard.com/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_29_1")
        let BBURLRequest = URLRequest(url: BBURL!)
        webView.loadRequest(BBURLRequest)
        
    }
    
    
}
