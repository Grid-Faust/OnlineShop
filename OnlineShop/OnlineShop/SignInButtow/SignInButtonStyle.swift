//
//  File.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import Foundation
import SwiftUI

struct SignInButtonStyle: ButtonStyle {
    
    let fillColor: Color = .purpleButton
    func makeBody(configuration: Configuration) -> some View {
        return SignInButton(
            configuration: configuration,
            fillColor: fillColor
        )
    }
    
    struct SignInButton: View {
        
        let configuration: Configuration
        let fillColor: Color
        let weight: CGFloat = 289.0
        let height: CGFloat = 46.0
        
        var body: some View {
            return configuration.label
                .padding(20)
                .frame(width: weight, height: height, alignment: .center)
                .background(
                    RoundedRectangle(
                        cornerRadius: 8
                    ).fill(
                        fillColor
                    )
                )
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
