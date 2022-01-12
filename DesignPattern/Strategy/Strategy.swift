//
//  Strategy.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/12.
//

import Foundation

//class Strategy<T> {
//    init() {
//        if type(of: self) == Strategy.self {
//            print("AbstractClass init！")
//            fatalError("can't init")
//        }
//    }
//
//    func algorithm(a: T, b: T) -> T { return a }
//}
//
//class AddStrategy<T: Numeric> : Strategy<T> {
//    override func algorithm(a: T, b: T) -> T {
//        return a + b
//    }
//
//}
//
//class SubStrategy<T: Numeric> : Strategy<T> {
//    override func algorithm(a: T, b: T) -> T {
//        return a - b
//    }
//
//}
//
//class MulStrategy<T: Numeric> : Strategy<T> {
//    override func algorithm(a: T, b: T) -> T {
//        return a * b
//    }
//
//}

//struct DivStrategy<T: Numeric> : Strategy {
//    func algorithm(a: T, b: T) -> T {
//        a / b
//    }
//
//}

protocol Strategy {
    associatedtype T

    func algorithm(a: T, b: T) -> T
}

struct AddStrategy<T: Numeric> : Strategy {
    func algorithm(a: T, b: T) -> T {
        return a + b
    }

}

struct SubStrategy<T: Numeric> : Strategy {
    func algorithm(a: T, b: T) -> T {
        return a - b
    }

}

struct MulStrategy<T: Numeric> : Strategy {
    func algorithm(a: T, b: T) -> T {
        return a * b
    }

}

//protocol Strategy {
//    associatedtype T
//
//    func algorithm(a: T, b: T) -> T
//}
//
//struct StrategyWraper<T: Numeric> {
//    let type: Int
//    let add = AddStrategy<T>()
//    let sub = SubStrategy<T>()
//    let mul = MulStrategy<T>()
//
//    func algorithm(a: T, b: T) -> T {
//        if type == 0 {
//            return add.algorithm(a: a, b: b)
//        }
//        if type == 1 {
//            return sub.algorithm(a: a, b: b)
//        }
//        if type == 2 {
//            return mul.algorithm(a: a, b: b)
//        }
//
//        return a
//    }
//}
//
//struct AddStrategy<T: Numeric> : Strategy {
//    func algorithm(a: T, b: T) -> T {
//        return a + b
//    }
//
//}
//
//struct SubStrategy<T: Numeric> : Strategy {
//    func algorithm(a: T, b: T) -> T {
//        return a - b
//    }
//
//}
//
//struct MulStrategy<T: Numeric> : Strategy {
//    func algorithm(a: T, b: T) -> T {
//        return a * b
//    }
//
//}
