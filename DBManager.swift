//
//  DBManager.swift
//  MVCandAlamofire
//
//  Created by R Shantha Kumar on 1/20/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import Foundation
import  Alamofire


class DataMange: NSObject {
    
    static var shared = DataMange()
    
    func dataRequest(url:String,completion:@escaping([Geo])->Void){
        
       
        Alamofire.request(url).responseData { (response) in
            
            if(response.result.error != nil){
                        
                
                print(response.result.error?.localizedDescription as Any)
                           
//                           completion(response.result.error?.localizedDescription) as! [Any]
                       }else{
                do{
                    var DataManage =   try JSONDecoder().decode([User].self,from:response.result.value!)
                    
                }
                catch{
                    
                    
                    
                }
                    
                   }
        }
        
        
        
    }
    
    
    
    
    
}
