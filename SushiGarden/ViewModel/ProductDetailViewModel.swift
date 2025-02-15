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
    
    init(product: Product) {
        self.product = product
    }
    
}
