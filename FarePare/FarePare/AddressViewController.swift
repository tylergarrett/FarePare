//
//  AddressViewController.swift
//  FarePare
//
//  Created by Tyler Garrett on 8/23/17.
//  Copyright © 2017 Garrett. All rights reserved.
//

import UIKit


class AddressViewController: UIViewController {

    @IBOutlet weak var AddressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Allow tap to hide keyboard, using dismissKeybaord()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddressViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        
    }
    
    // Function that hides keyboard when screen is tapped
    func dismissKeyboard() {
        // Ends editing in the view
        view.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FareSegue" //Defined in storyboard
        {
            let viewController = segue.destination as! CompareFareViewController
            viewController.pickupLocation = self.AddressTextField.text! // set the textfield text here
        }
        
    }

}

