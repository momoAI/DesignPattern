//
//  PatternTest.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation
import UIKit

@objcMembers class PatternTest: NSObject {
    static func test() {
        // 单例
//        let mg = CameraManager.defaultManager
//        let mg1 = CameraManager()
        
        // 适配器模式
//        let appleEmployee = AppleEmployee(name: "jobs", seniority: 20, salary: 100000)
//        dealEmployee(employee: appleEmployee)
//        let spacesEmployee = SpacesEmployee(s_name: "jack", s_seniority: 1, s_salary: 5000)
//        dealEmployee(employee: spacesEmployee)
//
//        func dealEmployee(employee: AppleEmployee) {
//            // ...
//            print(employee.getEmployeeInfo())
//        }
//
//        func dealEmployee(employee: SpacesEmployee) {
//            // ...
//            let spacesEeInfo = "员工：\(employee.s_name), 工龄：\(employee.s_seniority), 薪酬：\(Double(employee.s_salary))"
//            print(spacesEeInfo)
//        }
        // 1.类适配器
//        let appleEmployee = AppleEmployee(name: "jobs", seniority: 20, salary: 100000)
//        dealEmployee(employee: appleEmployee)
//        let employeeAdapter = SpacesEmployeeClassAdapter(s_name: "jack", s_seniority: 1, s_salary: 5000)
//        dealEmployee(employee: employeeAdapter)
//
//        func dealEmployee(employee: Employee) {
//            // ...
//            print(employee.getEmployeeInfo())
//        }
        // 2.对象适配器
//        let appleEmployee = AppleEmployee(name: "jobs", seniority: 20, salary: 100000)
//        dealEmployee(employee: appleEmployee)
//        let spacesEmployee = SpacesEmployee(s_name: "jack", s_seniority: 1, s_salary: 5000)
//        let employeeAdapter = SpacesEmployeeInstanceAdapter(spacesEmployee: spacesEmployee)
//        dealEmployee(employee: employeeAdapter)
//
//        func dealEmployee(employee: AppleEmployee) {
//            // ...
//            print(employee.getEmployeeInfo())
//        }
        
        // 桥接模式
//        let share1 = WXTextShare(text: "心灵毒鸡汤...")
//        share1.share()
//        let share2 = QQTextShare(text: "心灵毒鸡汤...")
//        share2.share()
//        let image = UIImage.init(named: "bridge.png")
//        guard let imgData = image?.pngData() else {
//            print("image data error")
//            return
//        }
//        let share3 = WXImageShare(imageData: imgData)
//        share3.share()
        
//        let wx = WXSharePlatform()
//        let share1 = TextShare(implementor: wx, text: "心灵毒鸡汤...")
//        share1.share()
//
//        let image = UIImage.init(named: "bridge.png")
//        guard let imgData = image?.pngData() else {
//            print("image data error")
//            return
//        }
//        let qq = QQSharePlatform()
//        let share2 = ImageShare(implementor: qq, imageData: imgData)
//        share2.share()
        
        
        // 装饰器模式 （减少继承）
//        let flower = Flower()
//        flower.sold()
//        let flowerGift = FlowerWithGift()
//        flowerGift.sold()
//        let flowerGiftCard = FlowerWithGiftCard()
//        flowerGiftCard.sold()
        
//        let flower = Flower()
//        let giftWrap = Gift(goods: flower)
//        let cardWrap = Card(goods: giftWrap)
//        cardWrap.sold()
        
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
        
        
        // 观察者模式
//        let subject = ConcreteSubject()
//        let observer1 = ConcreteObserverA()
//        let observer2 = ConcreteObserverB()
//        subject.add(observer1)
//        subject.add(observer2)
//        subject.state = "first"
//        subject.state = "second"
        
//        NotificationCenter.default.add(observer: self, selector: #selector(notice(n:)), name: "test")
//        NotificationCenter.default.add(observer: PatternTest(), selector: #selector(notice(n:)), name: "test")
//        NotificationCenter.default.remove(self, name: "test")
//        NotificationCenter.default.post(name: "test")
        
        // 中介者模式
//        let mediator = HouseMediator()
//        let owner = Owner(name: "fangdong", mediator: mediator)
//        let tenant = Tenant(name: "yang", mediator: mediator)
//        mediator.register(user: owner, id: 1)
//        mediator.register(user: tenant, id: 2)
//        tenant.contact(info: "wanna a house: 5 room, >100m²", id: 1)
//        owner.contact(info: "i have", id: 2)
//        var mediator = RouterStructure()
//        let a = ViewControllerA()
//        a.router = mediator
//        let b = ViewControllerB()
//        b.router = mediator
//        let c = ViewControllerC()
//        c.router = mediator
//        mediator.register(vc: a, path: "/A")
//        mediator.register(vc: b, path: "/B")
//        mediator.register(vc: c, path: "/C")
        
        
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
        
        // 状态模式
//        var room = Room()
//        room.book()
//        room.checkOut()
//        room.book()
//        room.checkIn()
        
        // 策略模式
//        let strategy1 = AddStrategy<Int>()
//        let strategy2 = MulStrategy<Double>()
//        let context1 = STContext(strategy: strategy1)
//        print(context1.operate(a: 1, b: 2))
//        let context2 = STContext(strategy: strategy2)
//        print(context2.operate(a: 1.1, b: 2.1))
//        
////        let strategy1 = AddStrategy<Int>()
////        let strategy2 = MulStrategy<Double>()
////        let strategy3 = MulStrategy<Int>()
////        var context1 = STContext(strategy: strategy1)
////        print(context1.operate(a: 1, b: 2))
////        context1.strategy = strategy3
////        print(context1.operate(a: 1, b: 2))
////        let context2 = STContext(strategy: strategy2)
////        print(context2.operate(a: 1.1, b: 2.1))

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
    
    @objc static func notice(n: Notification) {
        print("class..\(n.name)..\(String(describing: n.userInfo))")
    }
    
    @objc func notice(n: Notification) {
        print("instance..\(n.name)..\(String(describing: n.userInfo))")
    }
}
