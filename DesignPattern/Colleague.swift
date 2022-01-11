//
//  Colleague.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

// Colleague
protocol User {
    var name: String { get }
    var mediator: Mediator { get }
    
    func contact(info: String, id: Int)
    func receive(info: String)
}

struct Owner : User {
    var name: String
    var mediator: Mediator
    
    func contact(info: String, id: Int) {
        mediator.contact(info: "from owner " + name + " : " + info, id: id)
    }
    
    func receive(info: String) {
        print("owner " + name + " " + "receive " + info)
    }
    
    
}

struct Tenant : User {
    var name: String
    var mediator: Mediator
    
    func contact(info: String, id: Int) {
        mediator.contact(info: "from tenant " + name + " : " + info, id: id)
    }
    
    func receive(info: String) {
        print("tenant " + name + " " + "receive " + info)
    }
}
