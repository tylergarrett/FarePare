//
//  ViewController.swift
//  FarePare
//
//  Created by Tyler Garrett on 8/23/17.
//  Copyright © 2017 Garrett. All rights reserved.
//

import UIKit
import UberRides

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = RideRequestButton()
        button.center = view.center
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

