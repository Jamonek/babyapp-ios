//
//  Onboard.swift
//  Baby App
//
//  Created by Jamone Alexander Kelly on 5/17/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit
import FontAwesomeKit

class Onboard: UIViewController {
    @IBOutlet weak var viewLogo: UIImageView!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var buttonSeparater: UIView!
    
    override func viewDidLoad() {
        let facebookString = FAKFontAwesome.facebookSquareIconWithSize(18).attributedString()
        let twitterString = FAKFontAwesome.twitterIconWithSize(18).attributedString()
        
        let attr = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Medium", size: 18)!,
                    NSForegroundColorAttributeName: UIColor.expectingPurple()]
        
        let facebookButtonString = NSMutableAttributedString(attributedString: facebookString)
        let fbText: NSAttributedString = NSAttributedString(string: " Sign in with Facebook", attributes: attr)
        facebookButtonString.appendAttributedString(fbText)
        
        let twitterButtonString = NSMutableAttributedString(attributedString: twitterString)
        let twitterText: NSAttributedString = NSAttributedString(string: " Sign in with Twitter", attributes: attr)
        twitterButtonString.appendAttributedString(twitterText)
        
        self.facebookButton.setAttributedTitle(facebookButtonString, forState: .Normal)
        self.twitterButton.setAttributedTitle(twitterButtonString, forState: .Normal)
        //self.facebookButton.setAttributedTitle(, forState: <#T##UIControlState#>)
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
