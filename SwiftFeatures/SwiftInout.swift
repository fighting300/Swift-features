//
//  SwiftInout.swift
//  SwiftFeatures
//
//  Created by Leon on 2017/10/12.
//  Copyright © 2017年 leon. All rights reserved.
//

import Foundation
import UIKit

// inout 传值调用
class SwiftInout {
    var value = 50 // 值类型
    func increment(_ value: inout Int, length: Int = 10) {
        value += length
        print(value, self.value)
    }
    func getResult() {
        increment(&value)
        print(value)
        // 错误
        //let a = 100
        //var b = &value
    }
}

// defer 延迟执行
class SwiftDefer {
    var value = 50
    func doDeferPrint() {
        print("first")
        
        defer {
            print("defer 0")
        }
        print("second")
        defer {
            print("defer 1")
        }
    }
    /* 不推荐使用
    postfix func ++(x: inout Int) -> Int {
        defer { x += 1 }
        return x
    }
     */
}

// guard 条件声明
class SwiftGuard {
    var imageNamesList: [String]?
    func doGuard() {
        guard let count = imageNamesList?.count, count > 0 else {
            assertionFailure("OMG, error happen")
            //fatalError("OMG, fatal Error")
            return
        }
        for imageName in imageNamesList! {
            guard let image = UIImage(named: imageName)
                else { continue }
            // do something with image
            print(image.size)
        }
    }
}
