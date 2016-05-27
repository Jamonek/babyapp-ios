//
//  SigninEmailVC.swift
//  Baby App
//
//  Created by Jamone Alexander Kelly on 5/18/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import TextFieldEffects
import TSMessages

class SigninEmailVC: UIViewController {
    @IBOutlet weak var emailTextField: HoshiTextField!
    @IBOutlet weak var passwordTextField: HoshiTextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func signin() {
        guard let email = emailTextField.text, password = passwordTextField.text else {
            print("Failed")
            return
        }
        
        TSMessage.showNotificationInViewController(self.navigationController, title: "Error", subtitle: "Bad password", type: .Error)
        
        FIRAuth.auth()?.signInWithEmail(email, password: password) {(user, error) in
            if let error = error {
                print(error.localizedFailureReason)
                return
            }
        }
    }
}
