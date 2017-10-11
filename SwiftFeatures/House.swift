//
//  House.swift
//  SwiftFeatures
//
//  Created by Leon on 2017/10/10.
//  Copyright © 2017年 leon. All rights reserved.
//

import Foundation
// Designated Convenience required
class House {
    let door: Int
    var window: Int?
    required init(door: Int) {
        self.door = door
    }
    convenience init(window: Int) {
        self.init(door: 1)
        self.window = window
    }
}

class Room: House {
    var table: Int?
    required init(door: Int) {
        self.table = 1
        super.init(door: door)
    }
}


class Test {
    let room = Room(door: 1)
}
