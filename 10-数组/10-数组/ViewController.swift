//
//  ViewController.swift
//  10-数组
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo4()
    }
    
    // MARK: 数组的合并
    func demo4() {
        // [String]
        var array = ["李哲"] as [Any]
        //
        let array2 = ["我" , "爱你", 180] as [Any]
        
        // 将array2合并到array中
        // 注意：要合并数组的类型必须一致
        array += array2
        print(array)
    }
    
    // MARK: - 数组的容量
    func demo3() {
        // 定义一个数组，指定类型是存放 Int 的数值
//        var array:[Int]
        // 给数组进行初始化
//        array = [Int]()
        
        // 以上两句代码可以合并成一句
        var array = [Int]()
        print("\(array) 初始容量 \(array.capacity)")
//        array.append(1)
//        print(array)
        for i in 0..<8 {
            // 插入元素时，如果容量不够，会乘以2（初始为0 第一次就是2）
            // 容量不够，会在现有基础*2，可以避免每次都要分配空间
            array.append(i)
            print("\(array) 容量 \(array.capacity)")
        }
        
    }
    
    // MARK: - 数组的增 / 删 / 改
    func demo2() {
        // OC 中数组分可变 NSMutableArray(var) 不可变 NSArray(let)
        var array = ["1", "2", "3"]
        
        // 增加元素
        array.append("小红")
        print(array)
        
        // 修改 通过下标定位
        array[0] = "李哲"
        print(array)
        // 数组越界 - Index out of range
//        array[5] = "xxx"
        
        // 删除
        array.remove(at: 3)
        print(array)
        
        // 删除全部，并且保留空间
        array.removeAll(keepingCapacity: true)
        print("\(array) \(array.capacity)")
        
    }
    
    // MARK: 数组的遍历
    func demo1() {
        // [String]
        let array = ["我", "爱", "你"]
        // 1.按照下标遍历
        for i in 0..<array.count {
            print(array[i])
        }
        
        // 2.for in 遍历元素
        print("--- for in 遍历元素")
        for s in array{
            print(s)
        }
        // 3.enum block 遍历，同时遍历下标和内容
        // option + click
        print("--同时遍历下标和内容---")
        // 元组
        for e in array.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        
        // 4.同时遍历下标和内容2
        print("---同时遍历下标和内容2--")
        // n 就是索引下标
        // s 就是[String] 数组 n 对应的 String 元素
        // 其中 n / s 的名字可以随便写
        for (n, s) in array.enumerated() {
            print("\(n) \(s)")
        }
        
        // 5.反序遍历
        print("反序遍历")
        for s in array.reversed(){
            print(s)
        }
        print("反序索引和内容")
        // 5.反序索引&内容
        // 错误的反序，索引和内容不一致
        for (n,s) in array.reversed().enumerated() {
            print("\(n) \(s)")
        }
        
        print("-----正确的反序")
        // 先枚举 再反序
        for (n,s) in array.enumerated().reversed() {
            print("\(n) \(s)")
        }
        
        
    }
    
    // MARK: -数组的定义
    func demo() {
        // OC 使用[]定义数组Swift一样，但是没有@
        // 自动推导的结果[string] -> 表示数组中存放的都是 String
        let array = ["1", "2", "3"]
        print(array)
        
        // [Int] -> 表示存放的都是 Int
        // Swift 中基本数据类型不需要包装
        let arry2 = [1, 2, 3, 4]
        print(arry2)
        
        // CG结构体
        let p = CGPoint(x: 10, y: 10)
        // [CGPoint]
        let array3 = [p]
        print(array3)
        
        // 混合数组：开发几乎不用，因为数组是靠下标索引
        // 在Swift中还有一种类型[AnyObject -> 任意对象
        // 在Swift中一个类可以没有任何“父类”
        // *** 在混合的数组中，CG结构体需要包装
        let array4 = ["张三", NSValue(cgPoint: p)] as [Any]
        print(array4)
        
        let array5 = ["1", 2, 3] as [Any]
        print(array5)
        
        
    }


}

