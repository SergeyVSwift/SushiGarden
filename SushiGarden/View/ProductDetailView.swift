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
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                
                Image("s4")
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
                var position = Position(id: UUID().uuidString,
                                        product: viewModel.product,
                                        count: self.count)
                
                position.product.price = viewModel.getPrice(size: size)
                
                CartViewModel.shared.addPostition(position)
                presentationMode.wrappedValue.dismiss()
            } label: {
                /*ZStack {
                    AnimatedGradient(colors: [Color.green, Color.mint, Color.blue])
                    Text("В корзину!")
                        .foregroundColor(Color("bgColor"))
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                }
                .frame(width: 180, height: 65)
                .cornerRadius(15)*/
                Text("В корзину!")
                 .padding()
                 .padding(.horizontal, 60)
                 .foregroundColor(Color.black)
                 .font(.title3.bold())
                 .background(LinearGradient(colors: [Color("green2"), Color("green3")], startPoint: .leading, endPoint: .trailing))
                 //.background(Color("green3"))
                 .cornerRadius(30)
                 }
                 Spacer()
        }
    }
}

#Preview {
    ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                         title: "Филадельфия",
                                                                         imageUrl: "rv1",
                                                                         price: 450,
                                                                         descript: "Форель, сыр")))
}

/*Text("В корзину!")
 .padding()
 .padding(.horizontal, 60)
 .foregroundColor(Color.black)
 .font(.title3.bold())
 .background(LinearGradient(colors: [Color("greenBg"), Color("bgColor2")], startPoint: .leading, endPoint: .trailing))
 .cornerRadius(30)
 }
 Spacer()*/
