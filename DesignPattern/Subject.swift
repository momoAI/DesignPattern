//
//  Subject.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

protocol Buyer {
    func buyMac()
}

struct ChinaBuyer: Buyer {
    func buyMac() {
        print("china buyer buy mac")
    }
}

