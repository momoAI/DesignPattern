//
//  Burden.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// Decorator
protocol Burden : Coffee {
    var coffee: Coffee { get }
}

// concreteDecorator
struct Sugar : Burden {
    var coffee: Coffee
    
    var name: String {
        return coffee.name + "加糖"
    }
    
    var price: Double {
        return coffee.price + 1.1
    }
}

struct Milk : Burden {
    var coffee: Coffee
    
    var name: String {
        return coffee.name + "加牛奶"
    }
    
    var price: Double {
        return coffee.price + 2.2
    }
}

