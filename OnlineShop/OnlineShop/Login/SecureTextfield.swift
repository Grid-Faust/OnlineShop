//
//  SecureTextfield.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 16.03.2023.
//

import Foundation

import SwiftUI

struct SecureTextfield: View {
    
    @State var hidden = false
    @State var password = ""
    
    var body: some View {
        ZStack(alignment: .trailing) {
                Group {
                    if hidden {
                        TextField("Password", text: $password)
                            .modifier(PlaceholderModifier())
                    } else {
                        SecureField("Password", text: $password)
                            .modifier(PlaceholderModifier())
                    }
                }
                Button(action: {
                        self.hidden.toggle()})
                {
                    Image(systemName: self.hidden == true ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(self.hidden ? .green : .gray)
                        .offset(x: -10, y: 0)
                }
        }.textFieldStyle(OvalTextFieldStyle())
    }
    
}

struct SecureTextfield_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextfield()
        
    }
}


