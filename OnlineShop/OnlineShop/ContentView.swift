//
//  ContentView.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State var text = ""
    @State var login = ""
    @State var email = ""
    
    var body: some View {
        VStack(spacing: 50){
            Text("Sign in")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            VStack(spacing: 25) {
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
            HStack(alignment: .center){
                Image("GoogleImage")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 23.83, height: 24.22)
                       
                Text("Sign in with Google")
                    .font(.callout)
            }
            
            HStack(alignment: .center){
                Image("AppleImage")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 18.38, height: 21.87)
                       
                Text("Sign in with Apple")
                    .font(.callout)
            }
            
        }
           
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
