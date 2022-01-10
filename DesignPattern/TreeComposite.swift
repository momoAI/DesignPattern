//
//  TreeComposite.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/10.
//

import Foundation

struct TreeComposite: SubNode {
    var name: String
    var components: [TreeComponent] = []
    
    mutating func addComponent(_ cp: TreeComponent) {
        components.append(cp)
    }
    
    func operateDepth(depth: Int) {
        var temp = ""
        for _ in 0..<depth {
            temp = temp + "   "
        }
        
        print(temp + name)
        for component in components {
            component.operateDepth(depth: depth + 1)
        }
    }
}

struct TreeLeaf: TreeComponent {
    var name: String
    
    func operateDepth(depth: Int) {
        var temp = ""
        for _ in 0..<depth {
            temp = temp + "   "
        }
        
        print(temp + name)
    }
    
}
