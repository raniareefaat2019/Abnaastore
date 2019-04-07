//
//  RAHome+Extension.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import UIKit
extension RAHome: UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let CatCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RAHomeCategoriesCVC", for: indexPath) as! RAHomeCategoriesCVC
       CatCell.CatNameLabel.text = categoryArray[indexPath.row].name
        let imageName = categoryArray[indexPath.row].image
        let imageUrl = URL(string: "\(imageName!)")
        print("imageUrl\(imageUrl)")
//        let processor = DownsamplingImageProcessor(size: CatCell.CatImageView.size)
//            >> RoundCornerImageProcessor(cornerRadius: 20)
        CatCell.CatImageView.kf.indicatorType = .activity
        CatCell.CatImageView.kf.setImage(
            with: imageUrl,
           // placeholder: UIImage(named: "placeholderImage"),
            options: [
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        return CatCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width / 2 - 1
        return CGSize(width: width, height: 199)
        //return CGSize(width: 225, height: 228)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath){
        let count = self.categoryArray.count
        if indexPath.row == count-1 {
                loadMore()
                print("loadmore")
        }
        
    }
}
