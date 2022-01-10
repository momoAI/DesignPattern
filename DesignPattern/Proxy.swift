//
//  Proxy.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

struct BuyerProxy : Buyer {
    let buyer = ChinaBuyer()
    func buyMac() {
        buyer.buyMac()
        print("from usa")
    }
}
