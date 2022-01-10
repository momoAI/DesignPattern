//
//  FlyWhight.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

protocol FlyWeight {
    var inState: String { get }
    
    func operate(outState: String)
}

class ConcreteFlyWeight : FlyWeight {
    
    var inState: String = ""
    
    init(inState: String) {
        self.inState = inState
    }
    
    func operate(outState: String) {
        print("\(inState) +++ \(outState)")
    }
}

extension ConcreteFlyWeight : Equatable {
    static func == (lhs: ConcreteFlyWeight, rhs: ConcreteFlyWeight) -> Bool {
        let ptr1 = Unmanaged<AnyObject>.passUnretained(lhs as AnyObject).toOpaque()
        let ptr2 = Unmanaged<AnyObject>.passUnretained(rhs as AnyObject).toOpaque()

    //        var one = lhs
    //        var two = rhs
    //        let ptr1 = withUnsafePointer(to: &one) { $0 }
    //        let ptr2 = withUnsafePointer(to: &two) { $0 }

        return ptr2 == ptr1
    }
}
