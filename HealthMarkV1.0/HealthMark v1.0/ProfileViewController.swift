//
//  ProfileViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/18/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
       
    }
    
    @IBAction func updateButton() {
        alert()
    }
    
    @IBAction func alert() {
        let alertController = UIAlertController(title: "Profile updated", message: "Profile has been updated", preferredStyle: .Alert)
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
            { action -> Void in
                // Put your code here
                //changes view programatically
                
                
        }
        alertController.addAction(defaultAction)
        presentViewController(alertController, animated: true, completion: nil)

    }
}
