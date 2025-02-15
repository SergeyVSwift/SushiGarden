//
//  CartViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 18.02.25.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var positions = [Position]()
    
    func addPostition(_ postion: Position) {
     
        self.positions.append(postion)
    }
}
