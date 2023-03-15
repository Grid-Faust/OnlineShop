//
//  UserViewModel.swift
//  OnlineShop
//
//  Created by Дмитрий Емелин on 15.03.2023.
//

import Foundation

class UserViewModel {
    var user: UserModel
    
    init(user: UserModel) {
        self.user = user
    }
    
    func checkEmail() -> Bool {
        return user.email.contains("@mail.ru") ? true : false
    }
}
