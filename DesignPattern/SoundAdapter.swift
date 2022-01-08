//
//  SoundAdapter.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/6.
//

import Foundation

struct DogAdapter : SoundTarget {
    var dog: Dog
    
    func makeSound() {
        dog.bake()
    }
}

struct CatAdapter : SoundTarget {
    var cat: Cat
    
    func makeSound() {
        cat.mew()
    }
}
