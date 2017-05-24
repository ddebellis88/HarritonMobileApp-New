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
        customizeNavBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func webViewer() {
        
        let ZURL = URL(string: "https://zenithharriton.com/")
        let ZURLRequest = URLRequest(url: ZURL!)
        webView.loadRequest(ZURLRequest)
        
    }
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    
}

