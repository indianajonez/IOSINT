//
//  User.swift
//  Navigation
//
//  Created by Ekaterina Saveleva on 08.05.2023.
//

import Foundation
import UIKit

class User {
    var login: String
    var fullName: String
    var avatar: UIImage
    var status: String

    init(login: String, fullName: String, avatar: UIImage, status: String) {
        self.login = login
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

protocol UserService {
    func checkLogin(login: String) -> User? //
}


class CurrentUserService: UserService {
    
    var user: User?
    
    init(login: String) {
        self.user = checkLogin(login: login)
    }
    
    func checkLogin(login: String) -> User? {
        login == "Katay" ? User(login: "Katay", fullName: "Ekaterina", avatar: UIImage(named: "tiger") ?? UIImage(), status: "online") : nil
    }
    
    
}
