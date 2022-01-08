//
//  Cofe.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// component
protocol Coffee {
    var name: String { get }
    var price: Double { get }
}

extension Coffee {
    func sold() {
        print("\(name), price:\(price)")
    }
}

// concreateComponent
struct KafelakuCoffee : Coffee {
    var name: String = "猫屎咖啡"
    var price: Double = 100
}
