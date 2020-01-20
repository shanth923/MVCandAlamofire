//
//  RootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on January 20, 2020

import Foundation

struct RootClass : Codable {

        let address : Address?
        let company : Company?
        let email : String?
        let id : Int?
        let name : String?
        let phone : String?
        let username : String?
        let website : String?

        enum CodingKeys: String, CodingKey {
                case address = "address"
                case company = "company"
                case email = "email"
                case id = "id"
                case name = "name"
                case phone = "phone"
                case username = "username"
                case website = "website"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                address = try Address(from: decoder)
                company = try Company(from: decoder)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                id = try values.decodeIfPresent(Int.self, forKey: .id)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                phone = try values.decodeIfPresent(String.self, forKey: .phone)
                username = try values.decodeIfPresent(String.self, forKey: .username)
                website = try values.decodeIfPresent(String.self, forKey: .website)
        }

}
