//
//  PostViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/29/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation
import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func backButton(sender: AnyObject) {
        
        let vc : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("healthView")
        self.showViewController(vc as! UIViewController, sender: vc)
        
    }
    
    @IBAction func shareButton(sender: AnyObject) {
        
        let vc : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("healthView")
        self.showViewController(vc as! UIViewController, sender: vc)
    }
   
}