//
//  PositionCell.swift
//  SushiGarden
//
//  Created by Sergey V on 18.02.25.
//

import SwiftUI

struct PositionCell: View {
    
    let position: Position
    
    var body: some View {
        
        HStack {
            Text(position.product.title)
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count)шт.")
            Text("\(position.cost)₽")
                .frame(width: 85, alignment: .trailing)
        }.padding(.horizontal)
    }
}

#Preview {
    PositionCell(position:
                    Position(id: UUID().uuidString, product: Product(id: UUID().uuidString,
                                                                     title: "Филадельфия",
                                                                     imageUrl: "s1",
                                                                     price: 450,
                                                                     descript: "супер"), count: 3)
    )
}
