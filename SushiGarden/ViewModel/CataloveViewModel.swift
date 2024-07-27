//
//  CataloveViewModel.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 27.07.24.
//

import Foundation

class CatalogeViewModel: ObservableObject {
    
    static let shared = CatalogeViewModel()
    
    @Published var allSushi = [
        Product(id: "1",
                title: "Филадельфия классик",
                image: "s1",
                price: 950,
                descript: "моцарелла, томатный соус, соус хойсин, дижонская горчица"),
        Product(id: "2",
                title: "Ролл в тунце",
                image: "r2",
                price: 880,
                descript: "Italeno love"),
        Product(id: "3",
                title: "Филадельфия с угрем",
                image: "r3",
                price: 830,
                descript: "Italeno love"),
        Product(id: "4",
                title: "Запеченый с угрем",
                image: "s4",
                price: 830,
                descript: "Italeno love"),
        Product(id: "5",
                title: "Ролл в катаифи",
                image: "s5",
                price: 880,
                descript: "Italeno love"),
        Product(id: "6",
                title: "Ролл с креветкой",
                image: "s6",
                price: 910,
                descript: "Italeno love"),
        Product(id: "7",
                title: "Тартар ролл",
                image: "s7",
                price: 820,
                descript: "Italeno love"),
        ]
}
