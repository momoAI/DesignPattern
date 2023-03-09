//
//  ObjectStructure.swift
//  DesignPattern
//
//  Created by fooww on 2023/3/8.
//

import Foundation

struct PersonStructure {
    private var persons: [Person] = []
    
    mutating func addPerson(_ person: Person) {
        persons.append(person)
    }
    
    mutating func remove(_ person: Person) {
        persons.removeAll(where: { $0 == person })
    }
    
    func display(visitor: PersonAction) {
        for p in persons {
            p.accept(visitor: visitor)
        }
    }
}
