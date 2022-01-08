//
//  MealBuilder.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

protocol MealBuilder {
    var meal: Meal { get set }
    
    mutating func buildMeal()
    mutating func buildFood()
    mutating func buildDrink()
}


struct AMealBuilder: MealBuilder {
    var meal = Meal()
    
    mutating func buildMeal() {
        buildFood()
        buildDrink()
    }
    
    mutating func buildFood() {
        meal.food = "A-food"
    }
    
    mutating func buildDrink() {
        meal.drink = "A-drink"
    }
}

struct BMealBuilder: MealBuilder {
    var meal = Meal()
    
    mutating func buildMeal() {
        buildFood()
        buildDrink()
    }
    
    mutating func buildFood() {
        meal.food = "B-food"
    }
    
    mutating func buildDrink() {
        meal.drink = "B-drink"
    }
}
