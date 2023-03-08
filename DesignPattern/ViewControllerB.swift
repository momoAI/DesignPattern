//
//  ViewControllerB.swift
//  DesignPattern
//
//  Created by fooww on 2023/3/7.
//

import UIKit

class ViewControllerB: ViewControllerSubject {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let random = arc4random() % 2
        switch random {
        case 0:
            self.router?.router(from: self, to: "/A")
        default:
            self.router?.router(from: self, to: "/C")
        }
    }
    
}
