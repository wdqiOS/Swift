//
//  ViewController.swift
//  04-逻辑分支
//
//  Created by 汪大强 on 2018/7/6.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo1()
    }
    
    // MARK: 三目
    func demo1() {
        let x = 3
        
        x > 5 ? print("大了") : print("小了")
        
        // 分享 有印象就行
        // '()' 表示空执行
        x > 5 ? print("大了") : ()
    }

    func demo() {
        let x = 10
        /**
         1、条件不需要()
         2、语句必须要{}
            - 很多公司的代码鬼法中：禁止不适用{}
         */
        // if x > 5 print("大了")
        if x > 5 {
            print("大了")
        } else {
            print("小了")
        }
    }


}

