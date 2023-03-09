//
//  Visitor.swift
//  DesignPattern
//
//  Created by fooww on 2023/3/8.
//

import Foundation

protocol PersonAction {
    var action: String { get }
    
    func manConclusion(person: Person)
    func womanConclusion(person: Person)
}

struct Success : PersonAction {
    var action: String = "成功"
    
    func manConclusion(person: Person) {
        print("\(person.name): \(person.type)\(action)-背后有个伟大的女人")
    }
    
    func womanConclusion(person: Person) {
        print("\(person.name): \(person.type)\(action)-背后有个失败的男人")
    }
}

struct Faild : PersonAction {
    var action: String = "失败"
    
    func manConclusion(person: Person) {
        print("\(person.name): \(person.type)\(action)-111111")
    }
    
    func womanConclusion(person: Person) {
        print("\(person.name): \(person.type)\(action)-2222222")
    }
}
