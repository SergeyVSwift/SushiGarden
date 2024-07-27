//
//  CatalogeView.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 27.07.24.
//
import SwiftUI

struct CatalogeView: View {
    
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    let layoutForSushi = [GridItem(.adaptive(minimum: screen.width / 2.1))]
    @StateObject var viewModel = CatalogeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Суши")
                            .font(.system(size: 32, weight: .bold)) // Размер и стиль шрифта
                            .foregroundColor(.black) // Цвет текста
                            .padding(.horizontal) // Отступы по бокам
                            .padding(.top) // Отступ сверху
                        
                        LazyVGrid(columns: layoutForSushi) {
                            ForEach(viewModel.allSushi, id: \.id) { item in
                                ProductCell(product: item)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Каталог")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CatalogeView()
}
