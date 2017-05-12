//
//  ZenithViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/11/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class ZenithViewController: UIViewController {


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
        
        let ZURL = URL(string: "https://zenithharriton.com/")
        let ZURLRequest = URLRequest(url: ZURL!)
        webView.loadRequest(ZURLRequest)
        
    }
    
    
}

