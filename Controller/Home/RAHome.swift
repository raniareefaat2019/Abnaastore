//
//  SideMenu.swift
//  Abnaastore
//
//  Created by apple on 4/3/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit
import SideMenu
import Kingfisher
class RAHome: UIViewController {
    var imageName = "pageControllerImage"
    var pageIndex = 0
    var categoryArray = [CategoriesArrayData]()
    var banaaerArray = [Banners]()
    var current_page = 1
    var last_page = 1
    var isLoading : Bool = false
    
    @IBOutlet weak var PageImage: UIImageView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        print("ViewController.pageController.currentPage\(pageController.currentPage)")
        API.Category { (error: Error?, category: [CategoriesArrayData]?, banners : [Banners]?, last_page: Int ) in
            print("api called")
            self.isLoading = false
            if let banners = banners {
                self.banaaerArray = banners
                print("banaaerArrrrray\(self.banaaerArray.count)")
                API.dismissSVProgress()
            
            self.pageController.numberOfPages = self.banaaerArray.count
            let imageName = self.banaaerArray[0].image
            let imageUrl = URL(string: "\(imageName!)")
                print("imageUrl\(imageUrl)")
            self.PageImage.kf.indicatorType = .activity
            self.PageImage.kf.setImage(
                with: imageUrl,
                // placeholder: UIImage(named: "placeholderImage"),
                options: [
                    .scaleFactor(UIScreen.main.scale),
                    .transition(.fade(1)),
                    .cacheOriginalImage
                ])
            self.pageController.currentPage = 0
            self.pageIndex = 1
            _ = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(self.pageControllerHandel), userInfo: nil, repeats: true)
            }
            self.collectionView.addSubview(self.refresher)
            self.setupSideMenu()
            self.viewWillAppear(true)
            self.handelRefresh()
        }//end of api

    }//end of viewDidLoad

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }//end of viewWillAppear
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }//end of didReceiveMemoryWarning
    
    
    //to make table view refresh
    lazy var refresher: UIRefreshControl = {
        let refresher = UIRefreshControl()
        refresher.addTarget(self, action: #selector(handelRefresh), for: .valueChanged)

        return refresher
    }()


    
    

    
}//end of class

    




