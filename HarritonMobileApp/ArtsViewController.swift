//
//  ViewControllerAllSides.swift
//  HarritonMobileApp
//
//  Created by David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar on 4/24/17.
//  Copyright © 2017 David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar. All rights reserved.
//

import UIKit

class ArtsViewController: UIViewController {

    @IBOutlet weak var Label: UITextView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
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
    
    
    @IBAction func ChangeLabel(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0
        {

            Label.text = "Test 1"
        }
        
        
        
        
        if segmentControl.selectedSegmentIndex == 1
        {
            Label.text = "Test 2"
        }
        
        
        
        
        
        
        if segmentControl.selectedSegmentIndex == 2
        {
            Label.text = "Test 3"
        }
        
        
    }
    
    
}

