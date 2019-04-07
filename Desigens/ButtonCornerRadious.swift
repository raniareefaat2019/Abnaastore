//
//  ButtonCornerRadious.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit

class ButtonCornerRadious: UIButton {
    
    
    @IBInspectable var cornerRadious : CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadious
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.darkGray.cgColor
            self.layer.shadowOffset = CGSize(width: 0.0, height: 0.2)
            self.layer.shadowOpacity = 0.2
            
        }
    }
    
}
