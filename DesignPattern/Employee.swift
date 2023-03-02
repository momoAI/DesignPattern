//
//  SoundTarget.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

// Target
protocol Employee {
    var salary: Double { get }
    func getEmployeeInfo() -> String
}
