//
//  command.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

// command
protocol TVCommand {
    var tv: TV { get }
    
    func execute()
}

// concreteCommand
struct TVOpenCommand : TVCommand {
    var tv: TV
    
    func execute() {
        tv.open()
        
        // 记录请求日志
        print("执行了open命令")
    }
}

struct TVCloseCommand : TVCommand {
    var tv: TV
    
    func execute() {
        tv.close()
        
        // 记录请求日志
        print("执行了close命令")
    }
}

struct SwitchCommand : TVCommand {
    var tv: TV
    
    func execute() {
        tv.switch()
        
        // 记录请求日志
        print("执行了switch命令")
    }
}
