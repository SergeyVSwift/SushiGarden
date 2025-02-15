//
//  MWUser.swift
//  SushiGarden
//
//  Created by Sergey V on 22.02.25.
//

import Foundation

struct MWUser: Identifiable {
    
    var id: String
    var name: String
    var phone: Int
    var adress: String
    
    var representation: [String: Any] {
        
        var repres = [String: Any]()
        repres["id"] = self.id
        repres["name"] = self.name
        repres["phone"] = self.phone
        repres["adress"] = self.adress
        
        return repres
    }
}
