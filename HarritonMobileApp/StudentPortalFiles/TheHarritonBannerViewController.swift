//
//  TheHarritonBannerViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis (student HH) on 5/9/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class TheHarritonBannerViewController: UIViewController {


    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        webViewer()
        customizeNavBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func webViewer() {
        
        let HHSBannerURL = URL(string: "https://hhsbanner.com/")
        let HHSBannerURLRequest = URLRequest(url: HHSBannerURL!)
        webView.loadRequest(HHSBannerURLRequest)
        
    }
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    
}
