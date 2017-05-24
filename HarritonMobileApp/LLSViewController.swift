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
        customizeNavBar()
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
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    
    
}

