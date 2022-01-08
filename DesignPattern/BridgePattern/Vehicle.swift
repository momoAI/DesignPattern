//
//  Car.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// implementor
protocol Vehicle {
    func drive()
}

// Aimplementor
struct Car : Vehicle {
    func drive() {
        print("drive car")
    }
}

// Bimplementor
struct Bus : Vehicle {
    func drive() {
        print("drive bus")
    }
}
