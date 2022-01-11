//
//  Observer.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

//class Observer : NSObject {
//    // 推式
//    func update(oldState: String, newState: String) { }
//
//    // 拉式
//    func update(subject: ObSubject) { }
//}

//class ConcreteObserverA : Observer {
//    override func update(oldState: String, newState: String) {
//        print("A receive msg: \(oldState) --> \(newState)")
//    }
//
//    override func update(subject: ObSubject) {
//        if let concreteSubject = subject as? ConcreteSubject {
//            print("A receive msg: \(concreteSubject.state)")
//        }
//    }
//}
//
//class ConcreteObserverB : Observer {
//    override func update(oldState: String, newState: String) {
//        print("B receive msg: \(oldState) --> \(newState)")
//    }
//
//    override func update(subject: ObSubject) {
//        if let concreteSubject = subject as? ConcreteSubject {
//            print("B receive msg: \(concreteSubject.state)")
//        }
//    }
//}

protocol Observer {
    // 推式
    func update(oldState: String, newState: String)
    
    // 拉式
    func update(subject: ObSubject)
}

// 用于判等
extension Observer {
    func pointer() -> UnsafeMutableRawPointer {
       return Unmanaged<AnyObject>.passUnretained(self as AnyObject).toOpaque()
    }
}

class ConcreteObserverA : Observer {
    func update(oldState: String, newState: String) {
        print("A receive msg: \(oldState) --> \(newState)")
    }
    
    func update(subject: ObSubject) {
        if let concreteSubject = subject as? ConcreteSubject {
            print("A receive msg: \(concreteSubject.state)")
        }
    }
}

class ConcreteObserverB : Observer {
    func update(oldState: String, newState: String) {
        print("B receive msg: \(oldState) --> \(newState)")
    }
    
    func update(subject: ObSubject) {
        if let concreteSubject = subject as? ConcreteSubject {
            print("B receive msg: \(concreteSubject.state)")
        }
    }
}
