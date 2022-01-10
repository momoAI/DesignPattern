//
//  Component.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

protocol TreeComponent {
    var name: String { get }
    
    func operateDepth(depth: Int)
}

protocol SubNode : TreeComponent {
    var components: [TreeComponent] { get }
    
    mutating func addComponent(_ cp: TreeComponent)
}
