//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Cressler, Scott on 3/2/17.
//  Copyright © 2017 Intuit. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Retrieve any existing settings
        let defaults = UserDefaults.standard
        let defaultPercentage = defaults.integer(forKey: "defaultTipPercentage")
        defaultTipControl.selectedSegmentIndex = defaultPercentage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func changeDefaultPercentage(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
    }
}
