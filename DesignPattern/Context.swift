//
//  Context.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

// context
struct Room {
    // 所有状态
    let freeState = FreeState()
    let checkInState = CheckInState()
    let bookState = BookState()
    
    mutating func changeState(state: RoomState) {
        self.state = state
    }
    
    // 当前状态
    var state: RoomState
    
    init() {
        state = freeState
    }
    
    mutating func book() {
        // 预约
        let result = state.book()
        if result {
            // 预约成功 状态变更为已预约
            changeState(state: bookState)
        }
    }
    
    mutating func checkIn() {
        // 入住
        let result = state.checkIn()
        if result {
            // 入住成功 状态变更为已入住
            changeState(state: checkInState)
        }
    }
    
    mutating func checkOut() {
        // 退房
        let result = state.checkOut()
        if result {
            // 退房成功 状态变更为空闲
            changeState(state: freeState)
        }
    }
}
