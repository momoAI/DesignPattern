//
//  TVInvoker.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

// invoker
struct TVInvoker {
    // 1. 依赖
    var openCommand: TVCommand?
    var closeCommand: TVCommand?
    
    func openTV() {
        openCommand?.execute()
    }
    
    func closeTV() {
        closeCommand?.execute()
    }
    
    
    // 聚合
    var commands: [String : TVCommand] = [:]
    
    mutating func addCommand(_ cm: TVCommand, for key: String) {
        commands[key] = cm
    }
    
    func invoke(key: String) {
        if let command = commands[key] {
            command.execute()
        }
    }
}
