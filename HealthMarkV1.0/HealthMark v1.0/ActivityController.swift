//
//  ActivityController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/29/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation
import UIKit

class ActivityController: UITableViewController {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }
}
