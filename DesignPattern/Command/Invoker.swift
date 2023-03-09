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
    var switchCommand: TVCommand?
    var closeCommand: TVCommand?
    
    func openTV() {
        openCommand?.execute()
    }
    
    func closeTV() {
        closeCommand?.execute()
    }
    
    func `switch` () {
        switchCommand?.execute()
    }
    
    // 聚合
    var commandMaps: [String : TVCommand] = [:] // 存储所有command （对不同的请求进行参数化）
    var keys: [String] = [] // 记录command顺序
    
    mutating func addCommand(_ cm: TVCommand, for key: String) {
        keys.append(key)
        commandMaps[key] = cm
    }
    
    mutating func removeCommand(for key: String) {
        keys.removeAll(where: { $0 == key })
        commandMaps.removeValue(forKey: key)
    }
    
    func invoke(key: String) {
        if let command = commandMaps[key] {
            command.execute()
        }
    }
    
    func invoke() {
        // 按顺序执行 （对请求排队）
        for key in keys {
            invoke(key: key)
        }
    }
}
