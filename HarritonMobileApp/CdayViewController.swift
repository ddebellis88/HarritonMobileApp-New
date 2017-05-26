//
//  CdayViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/26/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit

class CdayViewController: UIViewController {
    
    //cday
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
        UserDefaults.standard.set(input.text, forKey: "name1_cday")
        input.text=""
        
        output2.text = input2.text
        UserDefaults.standard.set(input2.text, forKey: "name2_cday")
        input2.text=""
        
        output3.text = input3.text
        UserDefaults.standard.set(input3.text, forKey: "name3_cday")
        input3.text=""
        
        output4.text = input4.text
        UserDefaults.standard.set(input4.text, forKey: "name4_cday")
        input4.text=""
        
        output5.text = input5.text
        UserDefaults.standard.set(input5.text, forKey: "name5_cday")
        input5.text=""
        
        output6.text = input6.text
        UserDefaults.standard.set(input6.text, forKey: "name6_cday")
        input6.text=""
    }
    override func viewDidAppear(_ animated: Bool)
    {
        if let x_cday = UserDefaults.standard.object(forKey: "name1_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output.text = x_cday
        }
        
        if let x2_cday = UserDefaults.standard.object(forKey: "name2_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output2.text = x2_cday
        }
        
        if let x3_cday = UserDefaults.standard.object(forKey: "name3_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output3.text = x3_cday
        }
        
        if let x4_cday = UserDefaults.standard.object(forKey: "name4_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output4.text = x4_cday
        }
        
        
        if let x5_cday = UserDefaults.standard.object(forKey: "name5_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output5.text = x5_cday
        }
        
        if let x6_cday = UserDefaults.standard.object(forKey: "name6_cday")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output6.text = x6_cday
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
