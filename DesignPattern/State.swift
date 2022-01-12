//
//  State.swift
//  DesignPattern
//
//  Created by luxu on 2022/1/11.
//

import Foundation

// state
protocol RoomState {
    func book()
    func checkIn()
    func checkOut()
}

class FreeState : RoomState {
    func book() {
        print("预约成功")
    }
    
    func checkIn() {
        print("入住成功")
    }
    
    func checkOut() {
        
    }
}

class CheckInState : RoomState {
    func book() {
        print("已入住，不能预约")
    }
    
    func checkIn() {
        print("已有入住，不能再入住")
    }
    
    func checkOut() {
        print("退房成功")
    }
}

class BookState : RoomState {
    func book() {
        print("已有预约，不能再预约")
    }
    
    func checkIn() {
        print("入住成功")
    }
    
    func checkOut() {
        print("取消预约成功")
    }
}
