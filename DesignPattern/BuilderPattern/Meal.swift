//
//  Meal.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

struct Meal {
    var food: String = ""
    var drink: String = ""
    
    func show() {
        print("meal: food-\(food), drink-\(drink)")
    }
}
