//
//  ContentView.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack{
            Text("Sign in")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
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
            .padding(.horizontal, 20)
            .buttonStyle(SignInButtonStyle())
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
