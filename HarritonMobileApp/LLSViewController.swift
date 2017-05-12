//
//  LLSViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/11/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class LLSViewController: UIViewController {

    
    
    
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
        
        let LLSURL = URL(string: "https://i44.photobucket.com/albums/f24/Harriton/Screen%20Shot%202017-05-11%20at%208.00.05%20PM_zps4z4fb286.png~original")
        let LLSURLRequest = URLRequest(url: LLSURL!)
        webView.loadRequest(LLSURLRequest
        )
        
    }
    
    
}

