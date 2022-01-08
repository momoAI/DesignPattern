//
//  Cat.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

// adaptee
struct Cat {
    func mew() {
        print("mewmew")
    }
}

// 类 adapter
extension Cat : SoundTarget {
    func makeSound() {
        mew()
    }
}
