//
//  ViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/18/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func logoutButton() {
        
        alert()
    }
    
    
    @IBAction func alert() {
        let alertController = UIAlertController(title: "Logged out", message: "User has been logged out", preferredStyle: .Alert)
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
            { action -> Void in
                // Put your code here
                //changes view programatically
                
                
        }
        alertController.addAction(defaultAction)
        presentViewController(alertController, animated: true, completion: nil)

    }
}

