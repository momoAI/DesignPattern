//
//  STContext.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/12.
//

import Foundation

struct STContext<T: Numeric> {
    var strategy: Strategy<T>

    func operate(a: T, b: T) -> T {
        return strategy.algorithm(a: a, b: b)
    }
    
    
//    var strategy: StrategyWraper<T>
//
//    func operate(a: T, b: T) -> T {
//        return strategy.algorithm(a: a, b: b)
//    }
}
