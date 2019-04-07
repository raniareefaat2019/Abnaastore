//
//  ALLCategory+Model.swift
//  Abnaastore
//
//  Created by apple on 4/7/19.
//  Copyright © 2019 panorama. All rights reserved.
//

struct CategoriesArrayData: Codable {
    let id : Int?
    let name : String?
    let image : String?
}

struct AllCategoryData : Codable{
    let value : Bool
    let data: CategoryData
}
struct Banners : Codable {
    let id : Int?
    let image : String?
    let type : String?
    let product_id : String?
    let url : String?
}
struct CategoryData: Codable{
    let total : Int?
    let banners : [Banners]
    let categories : [CategoriesArrayData]
    let paginate : Paginate
}
