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
    @State var pasword = ""
    
    var body: some View {
        VStack(spacing: 55) {
            //MARK: greeting text
            Text("Welcome back")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            //MARK: textfields
            VStack(spacing: 65) {
                VStack(spacing: 45) {
                    TextField("First name", text: $name)
                        .modifier(PlaceholderModifier())
                    TextField("Password", text: $pasword)
                        .modifier(PlaceholderModifier())
                }
                .padding()
                .textFieldStyle(OvalTextFieldStyle())
                
                VStack(alignment: .leading, spacing: 10){
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
                }
                
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
