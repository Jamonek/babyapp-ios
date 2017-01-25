//
//  UIViewExt.swift
//  Baby App
//
//  Created by Jamone Alexander Kelly on 5/18/16.
//  Copyright © 2016 Mehe, LLC. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor {
        get { return UIColor(cgColor: layer.borderColor!) ?? UIColor() }
        set { layer.borderColor = newValue.cgColor }
    }
    
}
