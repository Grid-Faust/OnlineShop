//
//  LoginView.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 15.03.2023.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @State var name = ""
    @State var password = ""
    @State private var hidden = false
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 55) {
                //MARK: greeting text
                Text("Welcome back")
                    .font(.custom("Montserrat-Bold", size: 30))
                    .fontWeight(.heavy)
                    .padding()
                
                //MARK: textfields
                VStack(spacing: 65) {
                    VStack(spacing: 45) {
                        TextField("First name", text: $name)
                            .modifier(PlaceholderModifier())
                        ZStack(alignment: .trailing) {
                            Group {
                                if hidden {
                                    TextField("Password", text: $password)
                                        .modifier(PlaceholderModifier())
                                } else {
                                    SecureField("Password", text: $password)
                                        .modifier(PlaceholderModifier())
                                }
                            } // Group
                            //MARK: eye button
                            Button(action: {
                                self.hidden.toggle()})
                            {
                                Image(systemName: self.hidden == true ? "eye.fill" : "eye.slash.fill")
                                    .foregroundColor(self.hidden ? .green : .gray)
                                    .offset(x: -10, y: 0)
                            }
                        } // ZStack
                    } // VStack(spacing: 45)
                    .padding()
                    .textFieldStyle(OvalTextFieldStyle())
                    
                    
                        //MARK: Button
                        Button(action: {}) {
                            HStack{
                                Spacer()
                                Text("Login")
                                    .padding()
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Spacer()
                            }
                        }
                        
                        .buttonStyle(SignInButtonStyle())
                } //  VStack(spacing: 65)
            }
            .offset(x: 0, y: -45)
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
