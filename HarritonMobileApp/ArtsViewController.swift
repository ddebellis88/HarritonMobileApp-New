//
//  ViewControllerAllSides.swift
//  HarritonMobileApp
//
//  Created by David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar on 4/24/17.
//  Copyright © 2017 David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar. All rights reserved.
//

import UIKit

class ArtsViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
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
           // let a = "The study of art provides students with new ways of seeing themselves and the world. In the supportive, respectful environment of our art classes, students are encouraged to express their ideas and come to understand the visions of their classmates and of professional artists. They are taught the language of aesthetics and how to think critically about the art that surrounds them. They also learn and practice the process of creation and engage in the many decisions that lead to a work of art."
           // let b = "A team of experienced and dedicated art teachers deliver a rich and varied art curriculum. Students acquire technical skills, a broad knowledge of materials and media and the discipline and dedication necessary to complete complex projects. Students have the opportunity to explore their interests and continue their studies by taking a sequenced series of art courses in the media that appeal to them."

            Label.text = "\("The study of art provides students with new ways of seeing themselves and the world. In the supportive, respectful environment of our art classes, students are encouraged to express their ideas and come to understand the visions of their classmates and of professional artists. They are taught the language of aesthetics and how to think critically about the art that surrounds them. They also learn and practice the process of creation and engage in the many decisions that lead to a work of art.") \("A team of experienced and dedicated art teachers deliver a rich and varied art curriculum. Students acquire technical skills, a broad knowledge of materials and media and the discipline and dedication necessary to complete complex projects. Students have the opportunity to explore their interests and continue their studies by taking a sequenced series of art courses in the media that appeal to them.")"
        }
        
        
        
        
        if segmentControl.selectedSegmentIndex == 1
        {
            Label.text = "Test 2"
        }
        
        
        
        
        
        
        if segmentControl.selectedSegmentIndex == 3
        {
            Label.text = "Test 3"
        }
        
        
    }
    
    
}

