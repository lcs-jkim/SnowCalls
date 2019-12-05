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
   
       @IBOutlet weak var ErrorMessage: UILabel!
       @IBOutlet weak var AnswerBox: UILabel!
       @IBOutlet weak var PhoneNumberInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Give the focus to the input textview when the program begins
        PhoneNumberInput.becomeFirstResponder()
    }
    
    @IBAction func Convert(_ sender: Any) {
        
    }
    
}

