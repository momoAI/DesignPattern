//
//  SoundAdapter.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

class SpacesEmployeeClassAdapter: SpacesEmployee, Employee {
    var salary: Double {
        return Double(self.salary)
    }
    
    func getEmployeeInfo() -> String {
        return "员工：\(self.s_name), 工龄：\(self.s_seniority), 薪酬：\(self.salary)"
    }
}


class SpacesEmployeeInstanceAdapter: AppleEmployee {
    var spacesEmployee: SpacesEmployee
    
    init(spacesEmployee: SpacesEmployee) {
        self.spacesEmployee = spacesEmployee
        super.init(name: spacesEmployee.s_name, seniority: spacesEmployee.s_seniority, salary: Double(spacesEmployee.s_salary))
    }
    
    override func getEmployeeInfo() -> String {
        return "员工：\(spacesEmployee.s_name), 工龄：\(spacesEmployee.s_seniority), 薪酬：\(self.salary)"
    }
}
