//
//  RAHome+ExtensionFunctionTableData.swift
//  Abnaastore
//
//  Created by apple on 4/7/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit

extension RAHome{
    //to handel refresh for frist time
    
    func loadMore(){
        guard !isLoading else{ return}
        
        guard current_page < last_page else {return}
        print("current_page\(current_page),last_page\(last_page)")
        isLoading = true
        API.Category(page: current_page+1 ) { (error: Error?, category: [CategoriesArrayData]?, baneers: [Banners]? ,last_page: Int ) in
            self.isLoading = false
            if let category = category{
                self.categoryArray.append(contentsOf: category)
                API.dismissSVProgress()
                self.collectionView.reloadData()
                self.current_page += 1
                self.last_page = last_page
            }
        }//end of api
    }//end of loadMore
    
    //to handel refresh for frist time
    @objc  func handelRefresh(){
        self.refresher.endRefreshing()
        guard !isLoading else {return}
        isLoading = true
        API.showSVProgress()
        API.Category { (error: Error?, category: [CategoriesArrayData]?, banners : [Banners]?, last_page: Int ) in
            print("api called")
            self.isLoading = false
            if let category = category {
                self.categoryArray = category
                self.collectionView.reloadData()
                self.current_page = 1
                self.last_page = last_page
                API.dismissSVProgress()
            }
        }//end of api
        
    }//end of handel refresh
    
    
}
