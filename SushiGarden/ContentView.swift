//
//  ContentView.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            
            Image("logoGreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.width / 1.1)
            
            Text("Авторизация")
                .font(.title)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .padding(.bottom, 20)
                //.padding(.bottom, 250)
            
            VStack(spacing: 20) {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("bgColor2"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("bgColor2"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 110)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color("bgColor"))
    }
}

#Preview {
    ContentView()
}
