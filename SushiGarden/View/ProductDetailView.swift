//
//  ProductDetailView.swift
//  SushiGarden
//
//  Created by Sergey V on 16.02.25.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    @State var size = "8"
    @State var count = 1
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                
                Image("s6")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 330)
                
                
                HStack {
                    
                    Text("\(viewModel.product.title)!")
                        .font(.title2.bold())
                    Spacer()
                    Text("\(viewModel.getPrice(size: self.size))₽")
                        .font(.title3)
                }.padding(.horizontal)
                
                Text("\(viewModel.product.descript)")
                    .padding(.horizontal)
                    .padding(.vertical, 2)
                
                HStack {
                    Stepper("Количество", value: $count, in: 1...10)
                    
                    Text("\(self.count)")
                        .padding(.leading)
                }.padding(.horizontal)
                
                Picker("Количество", selection: $size) {
                    
                    ForEach(viewModel.sizes, id: \.self) { item in
                        Text(item)
                    }
                }.pickerStyle(.segmented)
                    .padding()
            }.ignoresSafeArea()
            
            Spacer()
            
            Button {
                print("Корзина")
            } label: {
                ZStack {
                    AnimatedGradient(colors: [Color.green, Color.mint, Color.blue])
                    Text("В корзину!")
                        .foregroundColor(Color("bgColor"))
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                }
                .frame(width: 180, height: 65)
                .cornerRadius(15)
            }
        }
    }
}

#Preview {
    ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                         title: "Филадельфия",
                                                                         imageUrl: "s1",
                                                                         price: 450,
                                                                         descript: "Форель, сыр")))
}
