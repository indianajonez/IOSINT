//
//  User.swift
//  Navigation
//
//  Created by Ekaterina Saveleva on 08.05.2023.
//

import Foundation
import UIKit

class User { // 1. Добавьте новый класс User для хранения информации о пользователе со свойствами: логин, полное имя, аватар, статус. Типы для свойств — String, за исключением аватара, который должен иметь тип UIImage.
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
    func checkLogin(login: String) -> User? // 2. протокол UserService с функцией, которая в качестве аргумента принимает логин и возвращает объект класса User?. То есть, в случае неверного логина, пользователь не будет авторизован.
}


class CurrentUserService: UserService { // 3. Добавьте новый класс CurrentUserService, который поддерживает протокол UserService. Класс должен хранить объект класса User и возвращать его в функции, реализующей протокол, если, конечно, переданный логин соответствует логину имени пользователя.
    
    var user: User? // объект класса User
    
    init(login: String) {
        self.user = checkLogin(login: login)
    }
    
    func checkLogin(login: String) -> User? { // 3.1 функция реализующая протокол, если переданный логин соответсвует логину имени пользовтеля
        login == "Katay" ? User(login: "Katay", fullName: "Ekaterina", avatar: UIImage(named: "tiger") ?? UIImage(), status: "online") : nil
    }
    
}
