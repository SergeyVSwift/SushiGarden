//
//  ProductDetailView.swift
//  SushiGarden
//
//  Created by Sergey V on 16.02.25.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    @State var size = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image("s6")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 300)
                
            
            HStack {
                
                Text("\(viewModel.product.title)!")
                    .font(.title2.bold())
                Spacer()
                Text("\(viewModel.product.price)₽")
                    .font(.title3)
            }.padding(.horizontal)
            
            Text("\(viewModel.product.descript)")
                .padding(.horizontal)
                .padding(.vertical, 2)
            
            Picker("Количество", selection: $size) {
                
                ForEach(viewModel.sizes, id: \.self) { item in
                    Text(item)
                }
            }.pickerStyle(.segmented)
            Spacer()
        }.ignoresSafeArea()
    }
}

#Preview {
    ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                         title: "Филадельфия",
                                                                         imageUrl: "s1",
                                                                         price: 450,
                                                                         descript: "Форель, сыр")))
}
