//
//  Cat.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

// target
class AppleEmployee {
    var name: String
    var seniority: Int
    var salary: Double
    
    init(name: String, seniority: Int, salary: Double) {
        self.name = name
        self.seniority = seniority
        self.salary = salary
    }
    
    func getEmployeeInfo() -> String {
        return "员工：\(name), 工龄：\(seniority), 薪酬：\(salary)"
    }
}

extension AppleEmployee : Employee {
    // Employee协议接口都是根据AppleEmployee 提取的； 因此原本就已经实现协议方法了
}
