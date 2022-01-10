//
//  FlyWeighntFactory.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

struct FlyWeightFactory {
    var flyweights: [String : FlyWeight] = [:]
    
    mutating func getFlyWeight(state: String) -> FlyWeight {
        let flyweight = flyweights[state]
        if let rFly = flyweight {
            return rFly
        }
        
        let nFly = ConcreteFlyWeight(inState: state)
        flyweights[state] = nFly
        return nFly
    }
}
