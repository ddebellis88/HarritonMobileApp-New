//
//  ABSViewController.swift
//  HarritonMobileApp
//
//  Created by Wil Levonuk (student HH) on 5/25/17.
//  Copyright © 2017 David DeBellis. All rights reserved.
//

import UIKit



class ABSViewController: UIViewController {
    
    //Early Dismissal
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
        UserDefaults.standard.set(input.text, forKey: "name1")
        input.text=""
        
        output2.text = input2.text
        UserDefaults.standard.set(input2.text, forKey: "name2")
        input2.text=""
        
        output3.text = input3.text
        UserDefaults.standard.set(input3.text, forKey: "name3")
        input3.text=""
        
        output4.text = input4.text
        UserDefaults.standard.set(input4.text, forKey: "name4")
        input4.text=""
        
        output5.text = input5.text
        UserDefaults.standard.set(input5.text, forKey: "name5")
        input5.text=""
        
        output6.text = input6.text
        UserDefaults.standard.set(input6.text, forKey: "name6")
        input6.text=""
    }
    override func viewDidAppear(_ animated: Bool)
    {
        if let x = UserDefaults.standard.object(forKey: "name1")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output.text = x
        }
        
        if let x2 = UserDefaults.standard.object(forKey: "name2")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output2.text = x2
        }
        
        if let x3 = UserDefaults.standard.object(forKey: "name3")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output3.text = x3
        }
        
        if let x4 = UserDefaults.standard.object(forKey: "name4")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output4.text = x4
        }
        
        
        if let x5 = UserDefaults.standard.object(forKey: "name5")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output5.text = x5
        }
        
        if let x6 = UserDefaults.standard.object(forKey: "name6")
            as? String //make sure elements loaded. Makes sure user input somthing
        {
            output6.text = x6
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



