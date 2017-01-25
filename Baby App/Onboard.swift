//
//  Onboard.swift
//  Baby App
//
//  Created by Jamone Alexander Kelly on 5/17/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit
import FontAwesomeKit
import Firebase
import FirebaseAuth
import FBSDKCoreKit
import FBSDKLoginKit
import TwitterKit

class Onboard: UIViewController {
    
    // MARK: Variables
    @IBOutlet weak var viewLogo: UIImageView!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var buttonSeparater: UIView!
    
    
    override func viewDidLoad() {
        // MARK: Setting the title and font of our buttons
        let facebookString = FAKFontAwesome.facebookSquareIcon(withSize: 20).attributedString()
        let twitterString = FAKFontAwesome.twitterIcon(withSize: 20).attributedString()
        
        let attr = [NSFontAttributeName: UIFont(name: "AvenirNext-UltraLight", size: 21)!,
                    NSForegroundColorAttributeName: UIColor.white]
        
        let facebookButtonString = NSMutableAttributedString(attributedString: facebookString!)
        let fbText: NSAttributedString = NSAttributedString(string: " Sign in with Facebook", attributes: attr)
        facebookButtonString.append(fbText)
        
        let twitterButtonString = NSMutableAttributedString(attributedString: twitterString!)
        let twitterText: NSAttributedString = NSAttributedString(string: " Sign in with Twitter", attributes: attr)
        twitterButtonString.append(twitterText)
        
        self.facebookButton.setAttributedTitle(facebookButtonString, for: UIControlState())
        self.twitterButton.setAttributedTitle(twitterButtonString, for: UIControlState())
        
        // MARK: Targets for Facebook and Twitter button
        self.facebookButton.addTarget(self, action: #selector(Onboard.loginWithFacebook(_:)), for: .touchUpInside)
        self.twitterButton.addTarget(self, action: #selector(Onboard.loginWithTwitter(_:)), for: .touchUpInside)
    }
    
    // MARK: Login user with Facebook account
    func loginWithFacebook(_ sender: UIButton) {
        let FB = FBSDKLoginManager()
        FB.logIn(withReadPermissions: ["email"], from: self, handler: {(result, error) -> Void in
            if error != nil {
                print(error)
            } else if (result?.isCancelled)! {
                print("LOGIN CANCELLED")
            } else {
                if (result?.grantedPermissions.contains("email"))! {
                    
                    let token = FBSDKAccessToken.current().tokenString
                    
                    let FAFBCredential = FIRFacebookAuthProvider.credential(withAccessToken: token!)
                    self.handleLogin(FAFBCredential)
                }
            }
        })
    }
    
    // MARK: Login user with Twitter account
    func loginWithTwitter(_ sender: UIButton) {
        Twitter.sharedInstance().logIn() { (session, error) in
            if let session = session {
                let credential = FIRTwitterAuthProvider.credential(withToken: session.authToken, secret: session.authTokenSecret)
                self.handleLogin(credential)
                
            } else {
                print(error?.localizedDescription)
            }
        }
    }
        
    // MARK: Move to AuthManager class
    func handleLogin(_ credential: FIRAuthCredential) {
        if let user = FIRAuth.auth()?.currentUser {
            
            user.link(with: credential) { (user, error) in
                if let error = error {
                    print(error.description)
                    return
                }
                
            }
        } else {
            FIRAuth.auth()?.signIn(with: credential) { (user, error) in
                if let error = error {
                    print(error.description)
                    return
                }
            }
        }
        
        let storyboard = UIStoryboard(name: "App", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "app_tab") 
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewWillLayoutSubviews() {
        self.viewLogo.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}
