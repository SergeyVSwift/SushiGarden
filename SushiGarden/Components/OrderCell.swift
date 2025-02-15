//
//  OrderCell.swift
//  SushiGarden
//
//  Created by Sergey V on 23.02.25.
//

import SwiftUI

struct OrderCell: View {
    
    @State var order: Order = Order(userID: "", date: Date(), status: "Новый")
    
    var body: some View {
        
        HStack {
            Text("\(order.date)")
            Text("\(order.cost)")
                .bold()
                .frame(width: 90)
            Text("\(order.status)")
                .frame(width: 100)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    OrderCell()
}
