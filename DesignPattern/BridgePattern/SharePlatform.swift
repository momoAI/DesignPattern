//
//  Car.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// implementor
protocol SharePlatform {
    func shareText(text: String)
    
    func shareImage(imageData: Data)
}

// ConcreteImplementor
struct WXSharePlatform : SharePlatform {
    func shareText(text: String) {
        // WXApi ....
        // ...
        print("\(text) v信分享成功")
    }
    
    func shareImage(imageData: Data) {
        // WXApi ....
        // ...
        print("图片 v信分享成功")
    }
}

struct QQSharePlatform : SharePlatform {
    func shareText(text: String) {
        // QQApi ....
        // ...
        print("\(text) QQ分享成功")
    }
    
    func shareImage(imageData: Data) {
        // QQApi ....
        // ...
        print("图片 QQ分享成功")
    }
}
