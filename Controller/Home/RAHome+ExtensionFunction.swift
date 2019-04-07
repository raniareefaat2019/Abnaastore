//
//  RAHome+ExtensionFunction.swift
//  Abnaastore
//
//  Created by apple on 4/7/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit
import SideMenu

extension RAHome{
    ///TO MAKE SIDE MENU
     func setupSideMenu() {
        // Define the menus
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
    }//end of setupSideMenu
    
    ///TO MAKE PAGE CONTROLLER
    @objc func pageControllerHandel(){
        if pageIndex > 0 && pageIndex < banaaerArray.count{
        let imageName = self.banaaerArray[pageIndex].image
        let imageUrl = URL(string: "\(imageName!)")
        self.PageImage.kf.indicatorType = .activity
        self.PageImage.kf.setImage(
            with: imageUrl,
            // placeholder: UIImage(named: "placeholderImage"),
            options: [
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])

            pageController.currentPage = pageIndex
            
            pageIndex+=1
            
            
        }else if pageIndex >= banaaerArray.count{
            pageIndex=0
            let imageName = self.banaaerArray[0].image
            let imageUrl = URL(string: "\(imageName!)")
            self.PageImage.kf.indicatorType = .activity
            self.PageImage.kf.setImage(
                with: imageUrl,
                // placeholder: UIImage(named: "placeholderImage"),
                options: [
                    .scaleFactor(UIScreen.main.scale),
                    .transition(.fade(1)),
                    .cacheOriginalImage
                ])
            pageController.currentPage = 0
            pageIndex+=1
            
            
        }
    }//end of pageControllerHandel
    

}
