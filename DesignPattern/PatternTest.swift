//
//  PatternTest.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

@objcMembers class PatternTest: NSObject {
    static func test() {
        // 建造者（生成器） 模式
////        let builder = AMealBuilder()
//        let builder = BMealBuilder()
//        var director = MealOrder()
//        let meal = director.construct(builder: builder)
//        meal.show()
        
        // 适配器模式
        // 1.类适配器
//        let adapter: SoundTarget = Dog()
//        adapter.makeSound()
//        let adapter2: SoundTarget = Cat()
//        adapter2.makeSound()
//
//        // 2.对象适配器
//        let adapter3 = DogAdapter(dog: Dog())
//        adapter3.makeSound()
//        let adapter4 = CatAdapter(cat: Cat())
//        adapter4.makeSound()
        
        // 桥接模式 (2个维度)
//        let car = Car()
//        let bus = Bus()
//        let asphaltCar = AsphaltRoad(vehicle: car)
//        let asphaltBus = AsphaltRoad(vehicle: bus)
//        let cementCar = CementRoad(vehicle: car)
//        let cementBus = CementRoad(vehicle: bus)
//        asphaltBus.driveOnRoad()
//        asphaltCar.driveOnRoad()
//        cementBus.driveOnRoad()
//        cementCar.driveOnRoad()
        
        // 装饰器模式 （减少继承）
//        let coffee = KafelakuCoffee()
//        let sugarCoffee = Sugar(coffee: coffee)
//        let milkCoffee = Milk(coffee: coffee)
//        let sugarMilkCoffee = Milk(coffee: sugarCoffee)
//        sugarCoffee.sold()
//        milkCoffee.sold()
//        sugarMilkCoffee.sold()
    }
}
