//
//  OrderStatus.swift
//  SushiGarden
//
//  Created by Sergey V on 23.02.25.
//

import Foundation

enum OrderStatus: String {
    case new = "Новый"
    case cooking = "Готовится"
    case delivery = "Доставляется"
    case complete = "Выполнен"
    case cancelled = "Отменен"
}
