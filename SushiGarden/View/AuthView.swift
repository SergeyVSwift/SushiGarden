//
//  ContentView.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 26.07.24.
//

import SwiftUI

struct AuthView: View {
    
    @StateObject var viewModel = AuthViewModel()
    @State private var isActive = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.bgColor
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 5) {
                        Image("logoGreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.width / 1.1)
                            .padding(.top, 50) // Добавим отступ сверху
                        
                        Text("Authorization")
                            .font(.title)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .padding(8)
                        
                        VStack(spacing: 20) {
                            CustomTextField(title: "Phone", text: $viewModel.phone, prompt: viewModel.phonePrompt)
                                .onChange(of: viewModel.phone) { newValue in
                                    DispatchQueue.main.async {
                                        viewModel.phone = viewModel.phone.formattedMask(text: viewModel.phone, mask: "+X (XXX) XXX-XX-XX")
                                    }
                                }
                                .keyboardType(.decimalPad)
                            
                            CustomTextField(title: "Password", text: $viewModel.password, prompt: viewModel.passwordPrompt, isSecure: true)
                        }
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding()
                        .padding(.bottom, 30)
                        
                        NavigationLink(destination: TabBar(), isActive: $isActive) {
                            Button {
                                // Установите isActive в true при нажатии
                                isActive = true
                            } label: {
                                ZStack {
                                    AnimatedGradient(colors: [Color.green, Color.mint, Color.blue])
                                    Text("Login")
                                        .foregroundColor(.white)
                                        .fontDesign(.rounded)
                                        .fontWeight(.semibold)
                                }
                                .frame(width: 140, height: 55)
                                .cornerRadius(15)
                            }
                            .disabled(!viewModel.canSubmit)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

