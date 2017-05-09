//
//  PowerSchoolViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis (student HH) on 5/9/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class PowerSchoolViewController: UIViewController {


    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        webViewer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func webViewer() {
        
        let powerSchoolURL = URL(string: "https://powerschool.lmsd.org/public/home.html")
        let powerSchoolURLRequest = URLRequest(url: powerSchoolURL!)
        webView.loadRequest(powerSchoolURLRequest)
        
        }


}
