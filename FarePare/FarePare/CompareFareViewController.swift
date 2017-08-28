//
//  CompareFareViewController.swift
//  FarePare
//
//  Created by Tyler Garrett on 8/23/17.
//  Copyright © 2017 Garrett. All rights reserved.
//

import UIKit
import CoreLocation



class CompareFareViewController: UIViewController {
    
    // Turn pickup location into CLLocation
    var pickupLocation = "null"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(pickupLocation) { (placemarks, error) in
            guard
                let placemarks = placemarks,
                let location = placemarks.first?.location
                else {
                    // handle no location found
                    return
            }
            
            // Use your location
            print(location.coordinate.latitude)
            print(location.coordinate.longitude)
        }
        print(pickupLocation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


    
}
