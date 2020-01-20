//
//  ViewController.swift
//  MVCandAlamofire
//
//  Created by R Shantha Kumar on 1/20/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataRequest2()
//        dataRequest()
        // Do any additional setup after loading the view.
    }

    
    
    
func dataRequest(){
        
    
    
   
        DataManager.shared.dataRequest(url: "https://jsonplaceholder.typicode.com/users") { (response,Error) in
            
            if(Error != nil){
            
                print(Error?.localizedDescription)
            }else{
                
                
                print(response)
                
            }
            
    }
     
    
        
    }
    
    var parameters = ["funcName":"verifyLogin","registeredEmail":"shanth923@gmail.com","registeredPassword":"9493215373v@"]
    
    
    func dataRequest2(){
        Alamofire.request("https://www.brninfotech.com/pulse/modules/admin/ValidateLogin.php", method: .post, parameters:parameters).responseJSON { (response) in
        
      
            if(response.result.error != nil){
                
                print(response.result.error?.localizedDescription)
                
            }
            else{
                
                print(response.result.value!)
                
            }
        }
         
        
        
        
        
    }
    
}
