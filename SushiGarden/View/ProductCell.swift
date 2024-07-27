//
//  ProdactSell.swift
//  Pizza
//
//  Created by Сергей Ващенко on 12.04.24.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    @State var uiImage: UIImage
    
    init(product: Product) {
        self.product = product
        self._uiImage = State(initialValue: UIImage(named: product.image) ?? UIImage(named: "s1")!)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screen.width * 0.4, height: screen.width * 0.4)
                .clipped()
                .cornerRadius(16)
                .background(Color.white)
                .padding(.trailing, 13)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 22))
                Spacer()
                Text("\(product.price) ₽")
                    .font(.custom("AvenirNext-bold", size: 20 ))
                    .padding(.bottom, 5)
            }
            .padding(.vertical, 10)
            
            Spacer()
        }
        .padding(.all, 0)
        .frame(width: screen.width * 0.95, height: screen.width * 0.35)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 12)
    }
}

#Preview {
    ProductCell(product: Product(id: "1",
                                 title: "Филадельфия классик",
                                 image: "s1",
                                 price: 950,
                                 descript: "Italeno love"))
}
