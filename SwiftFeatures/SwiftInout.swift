//
//  SwiftInout.swift
//  SwiftFeatures
//
//  Created by Leon on 2017/10/12.
//  Copyright © 2017年 leon. All rights reserved.
//

import Foundation

class SwiftInout {
    var value = 50 // 值类型
    func increment(_ value: inout Int, length: Int = 10) {
        value += length
        print(value, self.value)
    }
    func getResult() {
        increment(&value)
        print(value)
    }
}
