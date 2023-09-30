//
//  Extension+UIView.swift
//  Yummy
//
//  Created by Sagar Das on 18/09/23.
//

import UIKit


extension UIView {
    
   @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }

        set {
            self.layer.cornerRadius = newValue
        }
    }
}
