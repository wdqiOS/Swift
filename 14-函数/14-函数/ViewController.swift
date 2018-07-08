//
//  ViewController.swift
//  14-函数
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Swift 3.0 调用方式 -> OC 的程序员非常喜欢
        print(sum(x: 10, y: 20))
        // 外部参数测试
        print(sum1(num1: 20, num2: 20))
        print(sum2(30, 30))
        // 测试默认值
        print(sum3())
        print(sum3(x: 1, y: 1))
        print(sum3(x: 10))
        print(sum3(y: 20))
        
        
        demo1()
        demo2()
        demo3()
      
    }
    
    // MARK:无返回值
    /*
        主要用于闭包,在阅读第三方框架时，保证能够看懂
        - 直接省略
        - （）
        - void
     */
    func demo1() {
        print("哈哈")
    }
    // ->前面执行 ->:输出目标
    func demo2() -> () {
        print("呵呵")
    }
    
    func demo3() -> Void {
        print("嘻嘻")
    }
    
    // MARK:-默认值
    // 通过给参数设定默认值，在调用的时候可以任意组合参数，如果不指定的，就使用默认值
    func sum3(x: Int = 1, y: Int = 2) -> Int {
        return x + y
    }
    
    // MARK: - 外部参数
    // 外部参数就是在 形参前加一个名字
    // 外部参数不会影响函数内部的细节
    // 外部参数会让外部调用方看起来更加的直观
    // 外部参数如果使用_,在外部调用函数时，会忽略形参的名字
    func sum2(_ x: Int, _ y: Int) -> Int {
        // 在Swift 中，_就是可以忽略任意不感兴趣的内容
        // Immutable value 'i' was never used; consider replacing with '_' or removing it
        // i 从来没有被用到，建议使用_替代
        // for i in 0..<5
        for _ in 0..<5 {
            print("hello world")
        }
        return x + y
    }
    
    
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    /// 函数定义，格式： 函数名(形参列表) -> 返回值类型
    ///
    /// - Parameters:
    ///   - x: 参数x
    ///   - y: 参数y
    /// - Returns: 返回值
    func sum(x:Int, y:Int) -> Int {
        return x + y
    }


}

