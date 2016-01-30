//
//  MapViewController.swift
//  HealthMark v1.0
//
//  Created by Steven Roseman on 1/29/16.
//  Copyright © 2016 Steven Roseman. All rights reserved.
//

import Foundation


class MapViewController: UIViewController {
    
    @IBAction func backButton(sender: AnyObject) {
        let vc : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("activityView")
        self.showViewController(vc as! UIViewController, sender: vc)

    }
}