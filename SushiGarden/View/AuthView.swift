//
//  ContentView.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

struct AuthView: View {
    
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var isTabViewShow = false
    
    var body: some View {
        VStack {
            
            Image("logoGreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.width / 1.1)
            
            Text(isAuth ? "Авторизация" : "Регистрация")
                .font(.title)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .padding(.bottom, 5)
            
            VStack(spacing: 20) {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("bgColor2"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .foregroundColor(.black) // Обеспечивает видимость текста в светлой теме
                
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("bgColor2"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .foregroundColor(.black)
                
                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("bgColor2"))
                        .cornerRadius(12)
                        .padding(.horizontal, 24)
                        .foregroundColor(.black)
                }
                
                Button {
                    if isAuth {
                        print("Authorization")
                        isTabViewShow.toggle()
                    } else {
                        print("SignIn")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()
                    }
                } label: {
                    ZStack {
                        AnimatedGradient(colors: [Color.green, Color.mint, Color.blue])
                        Text(isAuth ? "Войти" : "Регистрация")
                            .foregroundColor(Color("bgColor"))
                            .fontDesign(.rounded)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 140, height: 55)
                    .cornerRadius(15)
                    .padding(.bottom, 10)
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    ZStack {
                        Text(
                            isAuth ? "Зарегистрироваться" : "Уже есть аккаунт")
                            .lineLimit(1)
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                    }
                    .frame(width: 200, height: 30)
                    .cornerRadius(15)
                    .padding(.bottom, 30)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color("bgColor"))
        .fullScreenCover(isPresented: $isTabViewShow) {
            MainTabBar()
        }
        .preferredColorScheme(.light) // Принудительно включаем только светлую тему
    }
}

#Preview {
    AuthView()
}
