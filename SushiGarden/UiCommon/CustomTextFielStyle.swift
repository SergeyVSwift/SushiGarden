//
//  CustomTextFielStyle.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
      return configuration
            .textFieldStyle(.plain)
            .padding(.horizontal, 8)
            .frame(height: 45)
            .cornerRadius(10)
            .foregroundColor(.black)
            .accentColor(.pink)
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
    }
}
