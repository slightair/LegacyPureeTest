//
//  ViewController.swift
//  LegacyPureeTest
//
//  Created by slightair on 9/25/16.
//  Copyright © 2016 slightair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        GenericLogger.shared.addScreenActivity(screenName: "Home")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: AnyObject) {
        GenericLogger.shared.addEventActivity(eventName: "ButtonAction")
    }
}
