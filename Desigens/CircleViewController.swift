//
//  CircleViewController.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit

class CircleViewController: UIView {
    @IBInspectable var CircleHeight : CGFloat = 2 {
        didSet{
            self.layer.borderWidth = 1
            self.layer.masksToBounds = false
            self.layer.borderColor = UIColor.lightGray.cgColor
            self.layer.cornerRadius = self.frame.height/CircleHeight
            self.clipsToBounds = true
            
        }
    }
}
class CircleImageView : UIImageView {
    @IBInspectable var CircleHeight : CGFloat = 2 {
        didSet{
            self.layer.borderWidth = 1
            self.layer.masksToBounds = false
            self.layer.borderColor = UIColor.lightGray.cgColor
            self.layer.cornerRadius = self.frame.height/CircleHeight
            self.clipsToBounds = true
            
        }
    }
}
