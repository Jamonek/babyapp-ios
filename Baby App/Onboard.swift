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
        let facebookString = FAKFontAwesome.facebookSquareIconWithSize(20).attributedString()
        let twitterString = FAKFontAwesome.twitterIconWithSize(20).attributedString()
        
        let attr = [NSFontAttributeName: UIFont(name: "AvenirNext-UltraLight", size: 21)!,
                    NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        let facebookButtonString = NSMutableAttributedString(attributedString: facebookString)
        let fbText: NSAttributedString = NSAttributedString(string: " Sign in with Facebook", attributes: attr)
        facebookButtonString.appendAttributedString(fbText)
        
        let twitterButtonString = NSMutableAttributedString(attributedString: twitterString)
        let twitterText: NSAttributedString = NSAttributedString(string: " Sign in with Twitter", attributes: attr)
        twitterButtonString.appendAttributedString(twitterText)
        
        self.facebookButton.setAttributedTitle(facebookButtonString, forState: .Normal)
        self.twitterButton.setAttributedTitle(twitterButtonString, forState: .Normal)
        
        // MARK: Targets for Facebook and Twitter button
        self.facebookButton.addTarget(self, action: #selector(Onboard.loginWithFacebook(_:)), forControlEvents: .TouchUpInside)
        self.twitterButton.addTarget(self, action: #selector(Onboard.loginWithTwitter(_:)), forControlEvents: .TouchUpInside)
    }
    
    // MARK: Login user with Facebook account
    func loginWithFacebook(sender: UIButton) {
        let FB = FBSDKLoginManager()
        FB.logInWithReadPermissions(["email"], fromViewController: self, handler: {(result, error) -> Void in
            if error != nil {
                print(error)
            } else if result.isCancelled {
                print("LOGIN CANCELLED")
            } else {
                if result.grantedPermissions.contains("email") {
                    
                    let token = FBSDKAccessToken.currentAccessToken().tokenString
                    
                    let FAFBCredential = FIRFacebookAuthProvider.credentialWithAccessToken(token)
                    self.handleLogin(FAFBCredential)
                }
            }
        })
    }
    
    // MARK: Login user with Twitter account
    func loginWithTwitter(sender: UIButton) {
        Twitter.sharedInstance().logInWithCompletion() { (session, error) in
            if let session = session {
                let credential = FIRTwitterAuthProvider.credentialWithToken(session.authToken, secret: session.authTokenSecret)
                self.handleLogin(credential)
                
            } else {
                print(error?.localizedDescription)
            }
        }
    }
        
    // MARK: Move to AuthManager class
    func handleLogin(credential: FIRAuthCredential) {
        if let user = FIRAuth.auth()?.currentUser {
            
            user.linkWithCredential(credential) { (user, error) in
                if let error = error {
                    print(error.description)
                    return
                }
                
            }
        } else {
            FIRAuth.auth()?.signInWithCredential(credential) { (user, error) in
                if let error = error {
                    print(error.description)
                    return
                }
            }
        }
        
        let storyboard = UIStoryboard(name: "App", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("app_tab") 
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    override func viewWillLayoutSubviews() {
        self.viewLogo.clipsToBounds = true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }
}
