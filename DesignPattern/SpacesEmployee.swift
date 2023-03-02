//
//  Dog.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

// adaptee
class SpacesEmployee {
    var s_name: String
    var s_seniority: Int
    var s_salary: Int
    
    init(s_name: String, s_seniority: Int, s_salary: Int) {
        self.s_name = s_name
        self.s_seniority = s_seniority
        self.s_salary = s_salary
    }
}


