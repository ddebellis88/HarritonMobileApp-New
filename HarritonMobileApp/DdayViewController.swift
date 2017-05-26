//
//  DdayViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/26/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class DdayViewController: UIViewController {
    
    //dday
    @IBOutlet weak var input6: UITextField!
    @IBOutlet weak var output6: UILabel!
    
    @IBOutlet weak var input5: UITextField!
    @IBOutlet weak var output5: UILabel!
    
    @IBOutlet weak var input4: UITextField!
    @IBOutlet weak var output4: UILabel!
    
    @IBOutlet weak var input3: UITextField!
    @IBOutlet weak var output3: UILabel!
    
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var output2: UILabel!
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBAction func action(_ sender: AnyObject)
    {
        output.text = input.text
        UserDefaults.standard.set(input.text, forKey: "name1_dday")
        input.text=""
        
        output2.text = input2.text
        UserDefaults.standard.set(input2.text, forKey: "name2_dday")
        input2.text=""
        
        output3.text = input3.text
        UserDefaults.standard.set(input3.text, forKey: "name3_dday")
        input3.text=""
        
        output4.text = input4.text
        UserDefaults.standard.set(input4.text, forKey: "name4_dday")
        input4.text=""
        
        output5.text = input5.text
        UserDefaults.standard.set(input5.text, forKey: "name5_dday")
        input5.text=""
        
        output6.text = input6.text
        UserDefaults.standard.set(input6.text, forKey: "name6_dday")
        input6.text=""
    }
    override func viewDidAppear(_ animated: Bool)
    {
        if let x_dday = UserDefaults.standard.object(forKey: "name1_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output.text = x_dday
        }
        
        if let x2_dday = UserDefaults.standard.object(forKey: "name2_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output2.text = x2_dday
        }
        
        if let x3_dday = UserDefaults.standard.object(forKey: "name3_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output3.text = x3_dday
        }
        
        if let x4_dday = UserDefaults.standard.object(forKey: "name4_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output4.text = x4_dday
        }
        
        
        if let x5_dday = UserDefaults.standard.object(forKey: "name5_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output5.text = x5_dday
        }
        
        if let x6_dday = UserDefaults.standard.object(forKey: "name6_dday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output6.text = x6_dday
        }
        
        
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    
    
}
