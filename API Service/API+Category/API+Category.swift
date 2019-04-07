//
//  API+Product.swift
//  Abnaastore
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 panorama. All rights reserved.
//

import CodableAlamofire
import Alamofire

extension API {
    class func Category(page : Int = 1 ,completion: @escaping (_ error: Error?, _ categoryArrayData: [CategoriesArrayData]?, _ banarArrayData: [Banners]?, _ total_pages : Int ) -> Void){

        
        let url = URLS.categories
        let parameters = [
            "page" : page,
            ]
        API.showSVProgress()
        let decoder = JSONDecoder()
        Alamofire.request(url,method: .get , parameters: parameters).responseDecodableObject(decoder: decoder) { (response: DataResponse<AllCategoryData> ) in
          //  print("rania\(response)")
            let responseStatus = response.result
            ///ResponseStatus check there is connection or not
            ///SUCCESS--> there is connection
            ///FAILOUR--> there is no connection
            if "\(responseStatus)" == "SUCCESS"{
                print("there is connection")
                let responseValue = response.result.value
                API.dismissSVProgress()
                let responseData = responseValue?.data
                let totalPages = responseData!.paginate.total_pages
                let CategoryArray = responseData?.categories
                let BannerArrayImage = responseData?.banners
                API.dismissSVProgress()
                completion(nil , CategoryArray, BannerArrayImage ,totalPages!)
                
            }else{
                print("there is no connection")
                API.dismissSVProgress()
                //completion(nil , arrayData, totalPages!)
            }

         //   completion(nil , arrayData, totalPages!)
            
        }//end of alamofire
    }//end of class function
}//end of extension
