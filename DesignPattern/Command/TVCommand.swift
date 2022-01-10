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
    }
}

struct TVCloseCommand : TVCommand {
    var tv: TV
    
    func execute() {
        tv.close()
    }
}
