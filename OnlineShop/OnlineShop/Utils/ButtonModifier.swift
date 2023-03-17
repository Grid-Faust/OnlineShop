//
//  Modifiers.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 14.03.2023.
//

import Foundation
import SwiftUI


struct ButtonModifier: ViewModifier {
    
    let weight: CGFloat = 289.0
    let height: CGFloat = 46.0
    
    let fillColor: Color = .purpleButton
    
    func body(content: Content) -> some View {
        content
            .padding(20)
            .fixedSize()
            .foregroundColor(.white)
            .font(.custom(.MontserratSemiBold, size: 16))
            .frame(width: weight, height: height, alignment: .center)
            .background(
                RoundedRectangle(
                    cornerRadius: 14
                ).fill(
                    fillColor
                )
            )
    }
}
