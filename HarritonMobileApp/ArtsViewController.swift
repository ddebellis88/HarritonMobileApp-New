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

            
            Label.text = "\("The study of art provides students with new ways of seeing themselves and the world. In the supportive, respectful environment of our art classes, students are encouraged to express their ideas and come to understand the visions of their classmates and of professional artists. They are taught the language of aesthetics and how to think critically about the art that surrounds them. They also learn and practice the process of creation and engage in the many decisions that lead to a work of art.")\("\n\nA team of experienced and dedicated art teachers deliver a rich and varied art curriculum. Students acquire technical skills, a broad knowledge of materials and media and the discipline and dedication necessary to complete complex projects. Students have the opportunity to explore their interests and continue their studies by taking a sequenced series of art courses in the media that appeal to them.")\("\n\nAvailable courses encompass studio art, art history, art and modern culture, metal arts, ceramics, photography, film and visual arts. Levels range from introductory to AP.")"
        }
        
        
        if segmentControl.selectedSegmentIndex == 1
        {
            Label.text = "Harriton is pleased to offer a variety of course offerings, including both performance and non-performance classes. Students at Harriton participate in a number of ensembles including Chorus, Concert Band, Concert Choir, Jazz Band, and Orchestra. In addition to the large ensembles, students also have the opportunity to perform in smaller chamber groups including Brass Ensemble, Chorale, String Quartet, and Woodwind Quintet. Our ensembles have received excellent and superior ratings at adjudicated festivals. In addition, our students are regularly chosen for participation in PMEA District, Region, and All-State Festivals."
        }
        
        
        if segmentControl.selectedSegmentIndex == 2
        {
            Label.text = "\("The Harriton Theatre Company produces two shows a year, usually a drama or comedy in the Fall and a musical in the Spring. The company's purpose is to foster stage craft, and all members are encouraged to take part in all aspects of production – from performance to set crew. The Company Band consists of student musicians who perform between drama/comedy acts and provide the music for our musicals.")\("\n\nCurricular opportunities include creative expression and performance, with concentrations in acting, production and theater arts (drama survey and appreciation).")"
        }
        
        
    }
    
    
}

