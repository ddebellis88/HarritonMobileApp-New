//
//  ViewController.swift
//  HarritonMobileApp
//
//  Created by David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar on 4/24/17.
//  Copyright © 2017 David DeBellis, Wil Levonuk, Behzad Dah Dahee & Kedar Karhadkar. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var infoButton: UIBarButtonItem!
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var timer: Timer!
    var updateCounter : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
        customizeNavBar()
        
        updateCounter = 0
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    internal func updateTimer()
    {
        if(updateCounter <= 3)
        {
            pageControl.currentPage = updateCounter
            imgView.image = UIImage(named: String(updateCounter+1) + ".png")
            updateCounter = updateCounter + 1
        }
        else
        {
            updateCounter = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
//            infoButton.target = revealViewController()
//            infoButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
        }
    
    }
    
     func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
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
