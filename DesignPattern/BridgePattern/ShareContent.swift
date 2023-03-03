//
//  Road.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// Abstraction
protocol ShareContent {
    var implementor: SharePlatform { get set }
    
    func share()
}

// RefinedAbstraction
struct TextShare: ShareContent {
    var implementor: SharePlatform
    
    var text: String
    
    func share() {
        implementor.shareText(text: text)
    }
}

struct ImageShare: ShareContent {
    var implementor: SharePlatform
    
    var imageData: Data
    
    func share() {
        implementor.shareImage(imageData: imageData)
    }
}

//struct WXTextShare {
//    var text: String
//    private let wxPlatform = WXSharePlatform()
//
//    func share() {
//        wxPlatform.shareText(text: text)
//    }
//}
//
//struct WXImageShare {
//    var imageData: Data
//    private let wxPlatform = WXSharePlatform()
//
//    func share() {
//        wxPlatform.shareImage(imageData: imageData)
//    }
//}
//
//struct QQTextShare {
//    var text: String
//    private let qqPlatform = QQSharePlatform()
//
//    func share() {
//        qqPlatform.shareText(text: text)
//    }
//}
//
//struct QQImageShare {
//    var imageData: Data
//    private let qqPlatform = QQSharePlatform()
//
//    func share() {
//        qqPlatform.shareImage(imageData: imageData)
//    }
//}
