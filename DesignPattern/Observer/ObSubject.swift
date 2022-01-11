//
//  Subject.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

protocol ObSubject {
    var observers: [Observer] { get }
    
    func add(_ observer: Observer)
    func remove(_ observer: Observer)
    func notify()
}

class ConcreteSubject : ObSubject {
    var observers: [Observer] = []
    private var oldValue = ""
    private var stateValue = ""
    
    var state: String {
        get {
            return stateValue
        }
        set {
            oldValue = stateValue
            stateValue = newValue
            notify()
        }
    }
    
    func add(_ observer: Observer) {
        observers.append(observer)
    }
    
    func remove(_ observer: Observer) {
        observers.removeAll{ $0.pointer() == observer.pointer() }
    }
    
    func notify() {
        for observer in observers {
            //推式
//            observer.update(oldState: oldValue, newState: stateValue)
            
            //拉式
            observer.update(subject: self)
        }
    }
}
