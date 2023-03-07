//
//  Subject.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation


/**仿NotificationCenter**/
class NotificationCenter {
    var observers: [String : [Observation]] = [:]
    
    static let `default` = NotificationCenter()
    
    private init() {}
    
    func add(observer: Any, selector: Selector, name: String) {
        let observation = Observation(observer: observer, selector: selector)
        if var obs = observers[name] {
            obs.append(observation)
            observers[name] = obs
        } else {
            let obs = [observation]
            observers[name] = obs
        }
    }
    
    func remove(_ observer: Any, name: String) {
        guard var observers = observers[name] else { return }
        
        for (index, observation) in observers.enumerated() {
            if let aClass = observation.observer as? NSObjectProtocol, let bClass = observer as? NSObjectProtocol  {
                if aClass.isEqual(bClass) {
                    observers.remove(at: index)
                    self.observers[name] = observers
                    break
                }
            }
        }
    }
    
    func post(name: String, userInfo: [String : Any]? = nil) {
        let notification = Notification(name: name, userInfo: userInfo)
        post(notification: notification)
    }
    
    func post(notification: Notification) {
        guard let observers = observers[notification.name] else { return }
        for observation in observers {
            observation.update(notification: notification)
        }
    }
}

class Notification: NSObject {
    let name: String
    var userInfo: [String : Any]?
    
    init(name: String, userInfo: [String : Any]? = nil) {
        self.name = name
        self.userInfo = userInfo
    }
}



/**自定义观察者**/
//protocol ObSubject {
//    var observers: [Observer] { get }
//
//    func add(_ observer: Observer)
//    func remove(_ observer: Observer)
//    func notify()
//}
//
//class ConcreteSubject : ObSubject {
//    var observers: [Observer] = []
//    private var oldValue = ""
//    private var stateValue = ""
//
//    var state: String {
//        get {
//            return stateValue
//        }
//        set {
//            oldValue = stateValue
//            stateValue = newValue
//            notify()
//        }
//    }
//
//    func add(_ observer: Observer) {
//        observers.append(observer)
//    }
//
//    func remove(_ observer: Observer) {
//        observers.removeAll{ $0.pointer() == observer.pointer() }
//    }
//
//    func notify() {
//        for observer in observers {
//            //推式
////            observer.update(oldState: oldValue, newState: stateValue)
//
//            //拉式
//            observer.update(subject: self)
//        }
//    }
//}
