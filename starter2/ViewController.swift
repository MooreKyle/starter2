//
//  ViewController.swift
//  starter2
//
//  Created by student on 9/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
       
       print("Introduce button tapped!")
       // Lets us choose the title we have selected from the segmented control
       // In our example that is whether it is first, second, third or forth
       let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
       
       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
       let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). \nI am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. \nIt is \(morePetsSwitch.isOn) that I want more pets."
       
       print(introduction)
   }
    
    //Function: stepperDidChange - Used when user interacts with a UIStepper element in the app. Updates numberOfPetsLabel to display current value of the stepper
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        print("Stepper changed!")
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }

}

