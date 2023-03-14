//
//  File.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import Foundation
import SwiftUI

struct SignInButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        return SignInButton(
            configuration: configuration
        )
    }
    
    struct SignInButton: View {
        
        let configuration: Configuration
        
        var body: some View {
            return configuration.label
                .modifier(ButtonModifier())
        }
    }
    
}

struct SignInButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Button(action: {}) {
                HStack{
                    Spacer()
                    Text("Sign in")
                        .padding()
                        .foregroundColor(.white)
                        .font(.headline)
                    Spacer()
                }
                
            }
        }.buttonStyle(SignInButtonStyle())
    }
}
