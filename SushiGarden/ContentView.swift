//
//  ContentView.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 26.07.24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.bgColor
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                Image("logoGreen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.width / 1.1)
                
                VStack(spacing: 5) {
                    
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
                        
                        CustomTextField(title: "Password", text: $viewModel.password, prompt: viewModel.passwordPrompt, isSecure: true)
                    }
                    .textFieldStyle(CustomTextFieldStyle())
                    .padding()
                    .padding(.bottom, 30)
                    
                    Button {} label: {
                        ZStack {
                            AnimatedGradient(colors: [Color.cyan, Color.purple])
                            Text("Login")
                                 .foregroundColor(.white)
                                 .fontDesign(.rounded)
                                 .fontWeight(.semibold)
                        }
                        .frame(width: 120, height: 45)
                        .cornerRadius(10)
                    }
                    .disabled(!viewModel.canSubmit)

                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
