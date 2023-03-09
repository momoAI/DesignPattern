//
//  Element.swift
//  DesignPattern
//
//  Created by fooww on 2023/3/8.
//

import Foundation

class Person : Equatable {
    var id: UUID = UUID()
    var type: String = ""
    var name: String = ""
    
    func accept(visitor: PersonAction) {}
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id.uuidString == rhs.id.uuidString
    }
}

class Man : Person {
    override init() {
        super.init()
        self.type = "男人"
    }
    
    override func accept(visitor: PersonAction) {
        visitor.manConclusion(person: self)
    }
}

class Woman : Person {
    override init() {
        super.init()
        self.type = "女人"
    }
    
    override func accept(visitor: PersonAction) {
        visitor.womanConclusion(person: self)
    }
}
