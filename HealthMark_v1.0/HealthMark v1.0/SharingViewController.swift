//
//  SharingViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/18/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation
import UIKit

class SharingViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
