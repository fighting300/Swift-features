//
//  ViewController.swift
//  SwiftFeatures
//
//  Created by Leon on 2017/10/10.
//  Copyright © 2017年 leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let room = Room(door: 1)
        print( room.door)
        
        FP().calculate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

