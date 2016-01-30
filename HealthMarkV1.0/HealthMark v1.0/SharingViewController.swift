//
//  SharingViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/18/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation
import UIKit

class SharingViewController: UITableViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
  
    @IBAction func backButton(sender: AnyObject) {
        
        let vc : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("welcomeCenter")
        self.showViewController(vc as! UIViewController, sender: vc)
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
     override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
     override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .None
    }
    
     override func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    
    @IBAction func postButton(sender: AnyObject) {
        
        let vc : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("shareView")
        self.showViewController(vc as! UIViewController, sender: vc)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
    }
    
  }
