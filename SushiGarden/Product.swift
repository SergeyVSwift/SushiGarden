//
//  Product.swift
//  Pizza
//
//  Created by Сергей Ващенко on 12.04.24.
//

import Foundation

struct Product {
    
    var id: String
    var title: String
    var image: String = ""
    var price: Int
    var descript: String
    
    var represantation: [String: Any] {
        var repres = [String: Any]()
        repres["id"] = self.id
        repres["title"] = self.title
        repres["price"] = self.price
        repres["descript"] = self.descript
        return repres
    }
    
    internal init(id: String = UUID().uuidString,
                  title: String,
                  image: String = "",
                  price: Int,
                  descript: String) {
        self.id = id
        self.title = title
        self.image = image
        self.price = price
        self.descript = descript
    }
}
