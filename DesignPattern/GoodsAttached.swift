//
//  Burden.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// Decorator
// 商品附属品
protocol GoodsAttached: Goods {
    var goods: Goods { get }
}

// concreteDecorator
// 礼物包装
struct Gift: GoodsAttached {
    private let giftPrice = 5.0
    
    var goods: Goods
    
    var name: String {
        return goods.name + "+" + "礼物包装"
    }
    
    var price: Double {
        return goods.price + giftPrice
    }
}

// 贺卡
struct Card: GoodsAttached {
    private let cardPrice = 1.1
    
    var goods: Goods
    
    var name: String {
        return goods.name + "+" + "贺卡"
    }
    
    var price: Double {
        return goods.price + cardPrice
    }
}

