//
//  ViewController.swift
//  SnowCalls
//
//  Created by Kim, Jenis on 2019-11-28.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

// UITextViewDelegate - means we "promise" to  implement certain methods on this class, or, also, can mean some funcionality is now made avaliable to us
class ViewController: UIViewController, UITextViewDelegate {
    
    //MARK PROPERTIES

    @IBOutlet weak var AnswerBox: UITextView!
    @IBOutlet weak var PhoneNumberInput: UITextView!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Give the focus to the input textview when the program begins
        PhoneNumberInput.becomeFirstResponder()
    }
    
    @IBAction func Convert(_ sender: Any) {
        
        // Clear the answer and error message box
        ErrorMessage.text = ""
        AnswerBox.text = ""
        
        // Guard against no input or an input more than 225 characters
        guard let PhoneNumberInputBox = PhoneNumberInput.text, PhoneNumberInputBox.count > 0, PhoneNumberInputBox.count < 225 else {
            ErrorMessage.text = ("Please enter a valid phone number")
            return
        }
        
        // Look at each character one by one in Input phone number
        var outputPhoneNumber = ""
        for character in PhoneNumberInputBox {
            
            switch character {
            case "A", "B", "C":
                outputPhoneNumber += "2"
            case "D", "E", "F":
                outputPhoneNumber += "3"
            case "G", "H", "I":
                outputPhoneNumber += "4"

            default:
                print("yeet")
            }
            
        }
        
    }
    
}

