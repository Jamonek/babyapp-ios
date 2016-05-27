//
//  SignupEmailVC.swift
//  Baby App
//
//  Created by Jamone Alexander Kelly on 5/23/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import TextFieldEffects
import TSMessages

class SignupEmailVC: UIViewController {
    @IBOutlet weak var firstNameTextField: HoshiTextField!
    @IBOutlet weak var lastNameTextField: HoshiTextField!
    @IBOutlet weak var emailTextField: HoshiTextField!
    @IBOutlet weak var passwordTextField: HoshiTextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func signup() {
        guard let firstName = firstNameTextField.text, lastName = lastNameTextField.text, email = emailTextField.text, password = passwordTextField.text else {
        print("Failed")
            return
        }
        
        FIRAuth.auth()?.createUserWithEmail(email, password: password) {(user, error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        
    }
}
