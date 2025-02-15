//
//  ProductDetailViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 16.02.25.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product
    @Published var sizes = ["8","12"]
    @Published var count = 0
    
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(size: String) -> Int{
        
        switch size {
        case "8": return product.price
        case "12": return Int(Double(product.price) * 1.5)
        default: return product.price
        }
    }
}
