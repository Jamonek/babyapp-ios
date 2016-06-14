//
//  TabBarController.swift
//  Expecting
//
//  Created by Jamone Alexander Kelly on 6/14/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit
import ChameleonFramework

class TabBarController: UITabBarController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        Chameleon.setGlobalThemeUsingPrimaryColor(UIColor.expectingPurple(), withSecondaryColor: UIColor.flatMagentaColorDark(), usingFontName: "AvenirNext-Medium", andContentStyle: .Contrast)
    }
}
