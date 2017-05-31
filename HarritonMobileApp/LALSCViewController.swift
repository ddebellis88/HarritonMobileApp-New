//
//  LALSCViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/26/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class LALSCViewController: UIViewController {

    @IBOutlet weak var containerA: UIView!
    @IBOutlet weak var containerB: UIView!
    @IBOutlet weak var containerC: UIView!
    @IBOutlet weak var containerD: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func changeContainer(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                self.containerA.alpha = 1
                self.containerB.alpha = 0
                self.containerC.alpha = 0
                self.containerD.alpha = 0
                }
            )
            
        }
        else if sender.selectedSegmentIndex == 1

        {
            UIView.animate(withDuration: 0.5, animations:
            {
                
                self.containerA.alpha = 0
                self.containerB.alpha = 1
                self.containerD.alpha = 0
                self.containerC.alpha = 0

            }
            )
        }
        
        else if sender.selectedSegmentIndex == 2
            
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.containerA.alpha = 0
                    self.containerB.alpha = 0
                    self.containerC.alpha = 1
                    self.containerD.alpha = 0
            }
            )
        }
        
        else if sender.selectedSegmentIndex == 3
            
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.containerA.alpha = 0
                    self.containerB.alpha = 0
                    self.containerC.alpha = 0
                    self.containerD.alpha = 1

            }
            )
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
