//
//  ROViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis (student HH) on 5/23/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class ROViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var backButton: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        customizeNavBar()
        webViewer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    func webViewer() {
        
        let ROURL = URL(string: "https://www.lmsd.org/uploaded/documents/Academics/reading_olympics_hs.pdf")
        let ROURLRequest = URLRequest(url: ROURL!)
        webView.loadRequest(ROURLRequest)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
