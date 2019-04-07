//
//  RAHome.swift
//  Abnaastore
//
//  Created by apple on 4/3/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit
import SideMenu

class RASideMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard SideMenuManager.default.menuBlurEffectStyle == nil else {
            return
        }
    }

}
