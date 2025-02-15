//
//  ProfileView.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        @State var isAvaAlertPresented = false
        @State var isQuitAlertPresented = false
        @State var isAuthViewPresented = false
        
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
                    Text("Сергей Гламур")
                        .font(.system(size: 20))
                        .bold()
                    
                    Text("+7 9787635532")
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Адрес доставки:")
                    .bold()
                Text("Россия, Крым, г. Симферополь, ул. Крымская, д. 16, кв. 34")
            }
            
            // Таблица с заказами
            List {
                Text("Ваши заказы будут тут!")
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
    }
}

#Preview {
    ProfileView()
}
