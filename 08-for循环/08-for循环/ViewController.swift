//
//  ViewController.swift
//  08-for循环
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo2()
    }
    
    // 反序遍历
    func demo2() {
        for i in 0..<10 {
            print(i)
        }
        
        print("-----------------")
        for i in (0..<10).reversed() {
            print(i)
        }
    }
    
    /**
        '空格大法' Swift 对语法要求非常严，尤其是空格
     
        @property(nonatomic, copy) NSString* name;
        @property(nonatomic, copy) NSString * name;
     */
    func demo1() {
        // 变量 i 在[0, 5) 循环
        for i in 0..<5 {
            print(i)
        }
        print("---------")
        // 变量 i 在[0, 5] 循环
        for i in 0...5 {
            print(i)
        }
        
        print("---------")
        // 提示：范围定义是一个固定的格式，一定注意空格
        // CountableRange<Int>
        let r1 = 0..<5
        print(r1)
        // CountableClosedRange<Int>
        let r2 = 0...5
        print(r2)
    }
    
    // MARK: - 传统 for 已经被取消
    func demo() {
        // 传统的 for，在swift 3.0 中被取消
        // i++ / ++i 从swift 3.0 被取消
        // i += 1
        // i++ 会多一个临时变量，i++ 大多数程序员使用 / ++i C++ C 程序员使用
        // 科普
        // num = i++ （后加）
        // 等价代码
        // temp = i
        // num = temp
        // i = temp + 1
        
        // num = ++i (先加)
        // 等价代码
        // i = i+1
        // num = i
//        for var i = 0; i < 10; i++ {
//
//        }
        
    }


}

