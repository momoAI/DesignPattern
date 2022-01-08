//
//  Road.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// abstraction
protocol Road {
    var vehicle: Vehicle { get }

    func bind(_ vehicle: Vehicle)

    func driveOnRoad()
}

extension Road {
    func bind(_ vehicle: Vehicle) {}
    func driveOnRoad() {}
}

// Aabstraction
struct AsphaltRoad : Road {
    var vehicle: Vehicle
    
    func driveOnRoad() {
        vehicle.drive()
        print("on asphaltRoad")
    }
}

// Babstraction
struct CementRoad : Road {
    var vehicle: Vehicle
    
    func driveOnRoad() {
        vehicle.drive()
        print("on cementRoad")
    }
}
