//
//  Dog.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

// adaptee
struct Dog {
    func bake() {
        print("wangwang")
    }
}

// 类 adapter
extension Dog : SoundTarget {
    func makeSound() {
        bake()
    }
}
