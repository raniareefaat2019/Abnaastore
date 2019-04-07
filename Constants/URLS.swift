//
//  URLS.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import Foundation
struct URLS {
    
    //MARK: - MAIN URL
    static let main = "http://abnaastore.panorama-q.com/api/"
    
    ///GET(TO GET PRODUCTS DATA)
    static let categories = main + "categories"
    
    ///POST(TO MAKE USER REGISTERATION)
    static let register = main + "users/register"
    
    ///POST(TO MAKE USER LOGIN)
    static let login = main + "users/login"
    
}//end of URLS
