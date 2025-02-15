//
//  ProfileView.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isAvaAlertPresented = false
    @State var isQuitAlertPresented = false
    @State var isAuthViewPresented = false
    
    @StateObject var viewModel: ProfileViewModel
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            HStack(spacing: 16) {
                Image("user")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(4)
                    .onTapGesture {
                        isAvaAlertPresented.toggle()
                    }
                    .confirmationDialog("Откуда взять фотоку?", isPresented: $isAvaAlertPresented) {
                        Button {
                            print("Library")
                        } label: {
                            Text("Из галереи")
                        }
                        
                        Button {
                            print("Камера")
                        } label: {
                            Text("Из камера")
                        }
                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    TextField("Имя", text: $viewModel.profile.name)
                        .font(.body.bold())
                    
                    HStack {
                        Text("+7")
                        TextField("Телефон",
                                  value: $viewModel.profile.phone,
                                  format: IntegerFormatStyle.number)
                    }
                }
            }.padding()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Адрес доставки:")
                    .bold()
                TextField("Ваш адрес", text: $viewModel.profile.adress)
            }.padding(.horizontal)
            
            // Таблица с заказами
            List {
                if viewModel.orders.count == 0 {
                    Text("Ваши заказы будут тут!")
                } else {
                    ForEach(viewModel.orders, id: \.id) { order in
                        OrderCell(order: order)
                    }
                }
            }.listStyle(.plain)
            
            Button {
                isQuitAlertPresented.toggle()
            } label: {
                Text("Выйти")
                    .padding()
                    .padding(.horizontal)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }.padding()
                .confirmationDialog("Действительно хотите выйти?", isPresented: $isQuitAlertPresented) {
                    Button {
                        isAuthViewPresented.toggle()
                    } label: {
                        Text("Да")
                    }
                }
                .fullScreenCover(isPresented: $isAuthViewPresented, onDismiss: nil) {
                    AuthView()
                }
        }
        .onSubmit {
            viewModel.setProfile()
        }
        .onAppear {
            self.viewModel.getProfile()
            self.viewModel.getOrders()
        }
    }
}

#Preview {
    ProfileView(viewModel: ProfileViewModel(profile: MWUser(id: "",
                                                            name: "Серега Гламур",
                                                            phone: 23232341,
                                                            adress: "Москва")))
}
