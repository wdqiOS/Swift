//
//  ViewController.swift
//  03-可选项
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
    
    func demo1() {
        // 1> 定义 y 没有初始化
        let y:Int?
        // 2> 给常量设置数值，初始化的工作能做一次
        y = 20
        // 两次修改常量会报错
        // y = 30
        
        // *** var 的可选值默认为 nil
        // *** let 的可选值没有默认值
        var x:Int?
        x = 10
        x = 100
        print(x)
        print(y)
    }
    // 最常见的错误
    // 在解包的时候发现了 nil 值
    func demo() {
        // 1、原始的可选项定义
        // Unexpectedly found nil while unwrapping an Optional value
        // none 没有值 或者 some 某一类值
        /**
         定义 可选项使用 ?
         解包使用 ! 准备计算
         */
        let x: Optional = 10
        
        // 2、简单的定义
        // ‘？’ 用来定义 y 是一个可选的 Int 类型，可能没有值，也可能有一个整数
        //
        let y: Int? = 20 // = nil
        
        
        // 输出结果 Optional(10),提示这是一个可选值
        print(x)
        // 常量 y 使用之前必须初始化
        print(y)
        
        // 1> 不同类型之间的值不能直接运算！如果没有值是 nil 不是任何数据类型，不能参与计算
        // print(x + y)
        // 2> ‘!’ 强行解包 - 从可选值中强行获取对应的非空值，如果真的是 nil 就会崩溃！
        
        // 程序员必须为每一个 ！负责
        // 程序中要少用 ‘!’
        print(x! + y!)
    }


}

