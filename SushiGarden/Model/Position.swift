//
//  Position.swift
//  SushiGarden
//
//  Created by Sergey V on 18.02.25.
//

import Foundation

struct Position: Identifiable {
    
    var id: String
    var product: Product
    var count: Int
    
    var cost: Int {
        return product.price * self.count
    }
    
}
