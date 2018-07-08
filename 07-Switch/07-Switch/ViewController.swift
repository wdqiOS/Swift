//
//  ViewController.swift
//  07-Switch
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo(num: 8)
        demo1()
    }
    // 1、使用的极少
    // 2、where 后面没有智能提示
    func demo1() {
        let point = CGPoint(x: 0, y: 10)
        switch point {
        case let p where p.x == 0 && p.y == 0:
            print("原点")
        case let p where p.x == 0:
            print("Y轴")
        case let p where p.y == 0:
            print("X轴")
        case let p where abs(p.x) == abs(p.y):
            print("对角线")
        default:
            print("其他")
        }
    }
    
    /**
        1.switch 可以针对任意类型的值进行分支，不再局限在整数
        2.switc 一般不需要 break
        3.switch 如果要多值，使用 ‘,’
        4. 所有的分支至少需要一条指令,如果什么都不干，才使用 break
     */
    func demo(num: Double) {
        switch num {
        case 10,9:
            print("优")
        case 8:
            break
        default:
            print("一般")
        }
    }


}

