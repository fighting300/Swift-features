//
//  FP.swift
//  SwiftFeatures
//
//  Created by Leon on 2017/10/11.
//  Copyright © 2017年 leon. All rights reserved.
//

import Foundation

class FP {
    var evens = [Int]()
    func calculate() {
        /*
        for i in 1...10 {
            if i % 2 == 0 {
                evens.append(i)
            }
        }
         */
        precondition(2 > 1, "This function can only convert 0 or 1 to Bool")
        evens = Array(1...10).filter(isEven)
        evens = Array(1...10).filter { (number) in number % 2 == 0 }
        evens = Array(1...10).filter { $0 % 2 == 0 }

        print(evens)
    }
    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }
}
