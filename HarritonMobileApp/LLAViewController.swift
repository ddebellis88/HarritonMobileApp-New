//
//  LLAViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/11/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class LLAViewController: UIViewController {

    
    
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
        
        let LLAURL = URL(string: "https://docs.google.com/spreadsheets/d/1btjfRNP5pGug_pIHhZ_8BQK4rxy-jKD822lQzxXgKo0/htmlembed")
        let LLAURLRequest = URLRequest(url: LLAURL!)
        webView.loadRequest(LLAURLRequest)
        
    }
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
}
