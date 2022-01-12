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
        
        // 外观模式
//        let system = System()
//        system.start()
        
        // 代理模式
//        let proxy = BuyerProxy()
//        proxy.buyMac()
        
        // 享元模式
//        var fFactory = FlyWeightFactory()
//        let fly1 = fFactory.getFlyWeight(state: "one") as! ConcreteFlyWeight
//        let fly2 = fFactory.getFlyWeight(state: "two")
//        let fly3 = fFactory.getFlyWeight(state: "one") as! ConcreteFlyWeight
//        fly1.operate(outState: "111")
//        fly2.operate(outState: "222")
//        fly3.operate(outState: "333")
//        print(fly1 == fly3)
        
        // 组合模式
//        var rnode = TreeComposite(name: "root node")
//        let node1 = TreeComposite(name: "node 1")
//        let node2 = TreeComposite(name: "node 2")
//        var node3 = TreeComposite(name: "node 3")
//        let node3_1 = TreeComposite(name: "node 3_1")
//        let node3_2 = TreeComposite(name: "node 3_2")
//        node3.addComponent(node3_1)
//        node3.addComponent(node3_2)
//        let leaf = TreeLeaf(name: "leaf")
//        rnode.addComponent(node1)
//        rnode.addComponent(node2)
//        rnode.addComponent(node3)
//        rnode.addComponent(leaf)
//        rnode.operateDepth(depth: 0)
        
        // 命令模式
//        let receiver = TV()
//        let commandOpen = TVOpenCommand(tv: receiver)
//        let commandClose = TVCloseCommand(tv: receiver)
//        let invoker = TVInvoker(openCommand: commandOpen, closeCommand: commandClose)
//        invoker.openTV()
//        invoker.closeTV()
//
//        var invoker2 = TVInvoker()
//        invoker2.addCommand(commandOpen, for: "o")
//        invoker2.addCommand(commandClose, for: "c")
//        invoker2.invoke(key: "o")
//        invoker2.invoke(key: "c")
        
        // 中介者模式
//        let mediator = HouseMediator()
//        let owner = Owner(name: "fangdong", mediator: mediator)
//        let tenant = Tenant(name: "yang", mediator: mediator)
//        mediator.register(user: owner, id: 1)
//        mediator.register(user: tenant, id: 2)
//        tenant.contact(info: "wanna a house: 5 room, >100m²", id: 1)
//        owner.contact(info: "i have", id: 2)
        
        // 观察者模式
//        let subject = ConcreteSubject()
//        let observer1 = ConcreteObserverA()
//        let observer2 = ConcreteObserverB()
//        subject.add(observer1)
//        subject.add(observer2)
//        subject.state = "first"
//        subject.state = "second"

        // 状态模式
//        var room = Room()
//        room.book()
//        room.checkOut()
//        room.book()
//        room.checkIn()
        
        // 策略模式
//        let strategy1 = AddStrategy<Int>()
//        let strategy2 = MulStrategy<Double>()
//        let strategy3 = MulStrategy<Int>()
//        var context1 = STContext(strategy: strategy1)
//        print(context1.operate(a: 1, b: 2))
//        context1.strategy = strategy3
//        print(context1.operate(a: 1, b: 2))
//        let context2 = STContext(strategy: strategy2)
//        print(context2.operate(a: 1.1, b: 2.1))
//
////        let strategy1 = StrategyWraper<Int>(type: 0)
////        let strategy2 = StrategyWraper<Double>(type: 2)
////        let strategy3 = StrategyWraper<Int>(type: 2)
////        var context1 = STContext(strategy: strategy1)
////        print(context1.operate(a: 1, b: 2))
////        context1.strategy = strategy3
////        print(context1.operate(a: 1, b: 2))
////        let context2 = STContext(strategy: strategy2)
////        print(context2.operate(a: 1.1, b: 2.1))
    }
}
