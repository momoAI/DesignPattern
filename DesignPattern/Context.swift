//
//  Context.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

// context
struct Room {
    let freeState = FreeState()
    let checkInState = CheckInState()
    let bookState = BookState()
    
    var state: RoomState
    
    init() {
        state = freeState
    }
    
    mutating func book() {
        state.book()
        state = bookState
    }
    
    mutating func checkIn() {
        state.checkIn()
        state = checkInState
    }
    
    mutating func checkOut() {
        state.checkOut()
        state = freeState
    }
}
