//
//  Mediator.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

protocol Mediator {
    var users: [Int : User] { get }
    
    func register(user: User, id: Int)
    func contact(info: String, id: Int)
}

class HouseMediator : Mediator {
    var users: [Int : User] = [:]
    
    func register(user: User, id: Int) {
        users[id] = user
    }
    
    func contact(info: String, id: Int) {
        if let user = users[id] {
            user.receive(info: info)
        }
    }
}
