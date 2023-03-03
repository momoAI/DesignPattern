//
//  Cofe.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// component
protocol Goods {
    var name: String { get }
    var price: Double { get }
}

extension Goods {
    func sold() {
        print("\(name), price:\(price)")
    }
}


// concreateComponent
struct Flower: Goods {
    var name: String = "鲜花"
    var price: Double = 99.9
}

struct Chocolate: Goods {
    var name: String = "巧克力"
    var price: Double = 66
}


//class Flower: Goods {
//    var name: String = "鲜花"
//    var price: Double = 99.9
//}
//
//class Chocolate: Goods {
//    var name: String = "巧克力"
//    var price: Double = 66
//}

//class FlowerWithGift: Flower {
//    private let giftPrice = 5.0
//
//    override init() {
//        super.init()
//        name = super.name + "+" + "礼物包装"
//        price = super.price + giftPrice
//    }
//}
//
//class FlowerWithCard: Flower {
//    private let cardPrice = 1.1
//
//    override init() {
//        super.init()
//        name = super.name + "+" + "贺卡"
//        price = super.price + cardPrice
//    }
//}
//
//class ChocolateWithGift: Chocolate {
//    private let giftPrice = 5.0
//
//    override init() {
//        super.init()
//        name = super.name + "+" + "礼物包装"
//        price = super.price + giftPrice
//    }
//}
//
//class ChocolateWithCard: Chocolate {
//    private let cardPrice = 1.1
//
//    override init() {
//        super.init()
//        name = super.name + "+" + "贺卡"
//        price = super.price + cardPrice
//    }
//}
//
//class FlowerWithGiftCard: FlowerWithGift {
//    private let cardPrice = 1.1
//
//    override init() {
//        super.init()
//        name = super.name + "+" + "贺卡"
//        price = super.price + cardPrice
//    }
//}
