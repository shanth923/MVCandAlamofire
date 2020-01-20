//
//  DataManager.swift
//  MVCandAlamofire
//
//  Created by R Shantha Kumar on 1/20/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit
import Alamofire

class DataManager: NSObject {

    static var shared = DataManager()
        
        func dataRequest(url:String,completion:@escaping([RootClass]?,Error?) -> Void){
            
            
            Alamofire.request(url).responseData { (response) in
                
                if(response.result.error != nil){
                            
                    
                    completion(nil,response.result.error)
                               
   
                           }
                
                else{
                    do{

        let data = try JSONDecoder().decode([RootClass].self, from:response.result.value!)
            
                        
                        completion(data,nil)
                        
                    }
                    catch{
                        print("unable to decode")
                
                    }
                        
}
            }
            
            
            
        }
    
                              }

    
    

