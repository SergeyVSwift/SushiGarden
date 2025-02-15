//
//  CartViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 18.02.25.
//

import Foundation

class CartViewModel: ObservableObject {
    
    static let shared = CartViewModel()
    
    private init() { }
    
    @Published var positions = [Position]()
    
    var cost: Int {
        
        var sum = 0
        
        for pos in positions {
            sum += pos.count
        }
        return sum
    }
    
    func addPostition(_ postion: Position) {
     
        self.positions.append(postion)
    }
}
