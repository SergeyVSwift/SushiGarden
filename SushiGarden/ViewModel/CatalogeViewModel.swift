//
//  CatalogeViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 16.02.25.
//

import Foundation

class CatalogeViewModel: ObservableObject {
    
    static let shared = CatalogeViewModel()
    
    var popularProducts = [
        Product(id: "1",
                title: "Филадельфия",
                imageUrl: "s1", // Название картинки в ассетах
                price: 650,
                descript: ""),
        Product(id: "2",
                title: "Дракон",
                imageUrl: "r2",
                price: 680,
                descript: ""),
        Product(id: "3",
                title: "Калифорния",
                imageUrl: "r3",
                price: 620,
                descript: ""),
        Product(id: "4",
                title: "Темпура",
                imageUrl: "s4",
                price: 700,
                descript: ""),
    ]
    
    var sushiProducts = [
        Product(id: "1",
                title: "Филадельфия",
                imageUrl: "s1", // Название картинки в ассетах
                price: 650,
                descript: ""),
        Product(id: "2",
                title: "Дракон",
                imageUrl: "r2",
                price: 680,
                descript: ""),
        Product(id: "3",
                title: "Калифорния",
                imageUrl: "r3",
                price: 620,
                descript: ""),
        Product(id: "4",
                title: "Темпура",
                imageUrl: "s4",
                price: 700,
                descript: ""),
    ]
}

