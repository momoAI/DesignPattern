//
//  State.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

// state
protocol RoomState {
    func book() -> Bool
    func checkIn() -> Bool
    func checkOut() -> Bool
}

// concreteState
class FreeState : RoomState {
    func book() -> Bool {
        print("预约成功")
        return true
    }
    
    func checkIn() -> Bool {
        print("未预约")
        return false
    }
    
    func checkOut() -> Bool {
        print("未预约")
        return false
    }
}

class CheckInState : RoomState {
    func book() -> Bool {
        print("已入住，不能预约")
        return false
    }
    
    func checkIn() -> Bool {
        print("已有入住，不能再入住")
        return false
    }
    
    func checkOut() -> Bool {
        print("退房成功")
        return true
    }
}

class BookState : RoomState {
    func book() -> Bool {
        print("已有预约，不能再预约")
        return false
    }
    
    func checkIn() -> Bool {
        print("入住成功")
        return true
    }
    
    func checkOut() -> Bool {
        print("取消预约成功")
        return true
    }
}
