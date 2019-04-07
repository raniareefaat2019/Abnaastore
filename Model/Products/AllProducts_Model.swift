//
//  AllProducts_Model.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

struct ProductsArrayData: Codable {
    let id : Int?
    let name : String?
    let type : String?
    let price : Int?
    let gift_type : String?
    let image : String?
    
}
struct Paginate : Codable {
    let total : Int?
    let count: Int?
    let per_page : Int?
    let next_page_url : String?
    let prev_page_url : String?
    let current_page : Int?
    let total_pages : Int?
    
}
struct AllProductsData : Codable{
    let value : Bool
    let data: ProductData
    
}
struct ProductData: Codable{
    let products : [ProductsArrayData]
    let paginate : Paginate
}

