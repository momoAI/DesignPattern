//
//  Mediator.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation
import UIKit

// Mediator
protocol RouterMediator {
    var viewControllers: [String : ViewControllerSubject] { get }

    mutating func register(vc: ViewControllerSubject, path: String)
    func router(from: ViewControllerSubject, to path: String)
}

// ConcreteMediator
struct RouterStructure: RouterMediator {
    var viewControllers: [String : ViewControllerSubject] = [:]
    
    mutating func register(vc: ViewControllerSubject, path: String) {
        viewControllers[path] = vc
    }
    
    func router(from: ViewControllerSubject, to path: String) {
        if let toVc = viewControllers[path] {
            from.present(toVc, animated: true)
        }
    }
}


//protocol Mediator {
//    var users: [Int : User] { get }
//    
//    func register(user: User, id: Int)
//    func contact(info: String, id: Int)
//}
//
//class HouseMediator : Mediator {
//    var users: [Int : User] = [:]
//    
//    func register(user: User, id: Int) {
//        users[id] = user
//    }
//    
//    func contact(info: String, id: Int) {
//        if let user = users[id] {
//            user.receive(info: info)
//        }
//    }
//}
