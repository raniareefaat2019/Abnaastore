//
//  API.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import CodableAlamofire
import SVProgressHUD
class API: NSObject {
    
   class func showSVProgress() {
    let svColor = UIColor(red: 149/255, green: 198/255, blue: 61/255, alpha: 1.00)
        SVProgressHUD.setForegroundColor(svColor)
        SVProgressHUD.setBorderColor(UIColor.white)
        SVProgressHUD.show()
    }//end of showSVProgress
    
    class func dismissSVProgress() {
        SVProgressHUD.dismiss()
    }//end of dismissSVProgress
    
}//end of APi class
