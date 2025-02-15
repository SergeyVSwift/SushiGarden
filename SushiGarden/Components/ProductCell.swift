//
//  ProductCell.swift
//  SushiGarden
//
//  Created by Sergey V on 16.02.25.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        VStack(spacing: 8) {
            Image(product.imageUrl) // Загружаем изображение из ассетов
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.50, maxHeight: screen.width * 0.50)
                .clipped()
                .cornerRadius(16)
            
            VStack {
                Text(product.title)
                    .font(.custom("AvenirNext-Regular", size: 20))
                Text("\(product.price)₽")
                    .font(.custom("AvenirNext-Bold", size: 18))
            }.padding(.bottom, 6)
        }
        .frame(width: screen.width * 0.45, height: screen.width * 0.55)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

#Preview {
    ProductCell(product: Product(id: "1",
                                 title: "Филадельфия",
                                 imageUrl: "s1",
                                 price: 450,
                                 descript: ""))
}

