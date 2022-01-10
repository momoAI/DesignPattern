//
//  System.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/8.
//

import Foundation

// facade
struct System {
    let sa = SystemA()
    let sb = SystemB()
    let sc = SystemC()
    
    func start() {
        sa.open()
        sb.turnOn()
        sc.run()
    }
}

// sub system
struct SystemA {
    func `open`() {
        print("a open")
    }
}

struct SystemB {
    func turnOn () {
        print("b turnOn")
    }
}

struct SystemC {
    func run() {
        print("c run")
    }
}
