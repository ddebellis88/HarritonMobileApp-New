//
//  StudentPortalViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis (student HH) on 4/28/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class StudentPortalViewController: UIViewController {


    @IBOutlet weak var EBButton: UIButton!
    @IBOutlet weak var SSButton: UIButton!
    @IBOutlet weak var SS2Button: UIButton!
    @IBOutlet weak var MButton: UIButton!
    @IBOutlet weak var ZButton: UIButton!
    @IBOutlet weak var PSButton: UIButton!
    @IBOutlet weak var BBButton: UIButton!
    @IBOutlet weak var HBButton: UIButton!
    @IBOutlet weak var LLSButton: UIButton!
    @IBOutlet weak var LLSAButton: UIButton!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
        customizeNavBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }

}
