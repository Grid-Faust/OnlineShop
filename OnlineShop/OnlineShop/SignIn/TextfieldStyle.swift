//
//  TextfieldStyle.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import Foundation
import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    
    let fillColor: Color = .buttonBackgroung
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(
                fillColor
            )
            .cornerRadius(20)
    }
}


struct OvalTextFieldStyle_Previews: PreviewProvider {
    @State static var text = ""
    @State static var login = ""
    @State static var email = ""

    
    static var previews: some View {
        VStack(spacing: 45) {
            
            TextField("First name", text: $text)
                .modifier(PlaceholderModifier())
            TextField("Login", text: $login)
                .modifier(PlaceholderModifier())
            TextField("Email", text: $email)
                .modifier(PlaceholderModifier())
        }
        .padding()
        .textFieldStyle(OvalTextFieldStyle())
    }
}

struct PlaceholderModifier: ViewModifier {
    let weight: CGFloat = 289.0
    let height: CGFloat = 29.0
    
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .foregroundColor(.placeholder)
            .frame(width: weight, height: height, alignment: .center)
            .font(.custom(.MontserratSemiBold, size: 14))
    }
}
