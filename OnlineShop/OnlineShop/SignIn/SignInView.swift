//
//  SignInView.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State var userModel = UserModel()
    
    @State private var isActiveLoginView = false
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 50){
                Text("Sign in")
                    .font(.custom(.MontserratSemiBold, size: 30))
                    .padding()
                
                //MARK: textfilds
                VStack(spacing: 40) {
                    VStack(spacing: 45) {
                        
                        TextField("First name", text: $userModel.firstName)
                            .modifier(PlaceholderModifier())
                        TextField("Login", text: $userModel.login)
                            .modifier(PlaceholderModifier())
                        TextField("Email", text: $userModel.email)
                            .modifier(PlaceholderModifier())
                    }
                    .padding()
                    .textFieldStyle(OvalTextFieldStyle())
                    
                    VStack(alignment: .leading, spacing: 10){
                        //TODO: move to Main page
                        //MARK: Button
                        Button(action: {}) {
                            HStack{
                                Spacer()
                                Text("Sign in")
                                    .modifier(ButtonModifier())
                                Spacer()
                            }
                        }
                        
                        .buttonStyle(AuthorizationButtonStyle())
                        
                        //MARK: Log in
                        HStack(alignment: .firstTextBaseline, spacing: 7){
                            Text("Already have an account?")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            //.frame(width: 122.91, height: 9.42)
                            
                            //TODO: move to LoginPage
                            NavigationLink(destination: LoginView(), isActive: $isActiveLoginView) {
                                
                                Button(action: {
                                    isActiveLoginView = true
                                }) {
                                    Text("Log in")
                                        .font(.footnote)
                                    //.frame(width: 27.99, height: 9.57)
                                }
                            }
                        }
                    }
                    .foregroundColor(.logInButton)
                }
                
                //MARK: Sign in with Apple/Google
                VStack(alignment: .leading, spacing: 30){
                    Button(action: {}) {
                        HStack(alignment: .center){
                            Image("GoogleImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 23.83, height: 24.22)
                            
                            Text("Sign in with Google")
                                .font(.custom(.MontserratMedium, size: 14))
                                .tint(.black)
                        }
                    }
                    Button(action: {}) {
                        HStack(alignment: .center){
                            Image("AppleImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18.38, height: 21.87)
                            
                            Text("Sign in with Apple")
                                .font(.custom(.MontserratMedium, size: 14))
                                .tint(.black)
                        }
                    }
                }
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
        
    }
}
