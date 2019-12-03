//
//  ViewController.swift
//  SnowCalls
//
//  Created by Kim, Jenis on 2019-11-28.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK PROPERTIES
    @IBOutlet weak var Phonenumber: UITextField!
    @IBOutlet weak var ErrorMessage: UILabel!
    @IBOutlet weak var AnswerBox: UILabel!
    
    @IBAction func Convert(_ sender: Any) {
        
        // Clear the answer and error labels
        AnswerBox.text = ""
        ErrorMessage.text = ""
        
        guard let PhonenumberInput = Phonenumber.text, PhonenumberInput.count > 0 else {
            ErrorMessage.text = "Please enter a phone number to convert"
            return
            
            guard let PhonenumberInput = Phonenumber.text, PhonenumberInput.count < 225 else {
                ErrorMessage.text = "Please enter a phone number that is less than 225 characters"
            }
            
            
    
        }
        
    }
    
}

