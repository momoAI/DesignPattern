//
//  Order.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

struct MealOrder {
    private var builder: MealBuilder = AMealBuilder()
    
    mutating func construct(builder: MealBuilder) -> Meal {
        self.builder = builder
        self.builder.buildMeal()
        return self.builder.meal
    }
}
