//
//  Person.swift
//  26-计算型属性
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class Person: NSObject {
    // getter & setter 仅用演示，日常开发不用！
    private var _name:String?
    
    // Swift 中一般不会重写 getter 方法和 setter 方法
    var name:String?{
        get{
            // 返回 _成员变量
            return _name
        }
        set{
            // 使用_成员变量 记录 值
            _name = newValue
        }
    }
    
    // OC中定义属性的时候，有一个 readonly -> 重写getter方法
    var title:String {
        // 只重写了 getter 方法，没有重写getter方法
        // 就是只读属性
        get{
            return "Mr." + (name ?? "")
        }
    }
    
    // 只读属性的简写
    // 又称为‘计算型’属性 -> 本身不保存内容，都是通过计算获得结果
    // 类似于一个函数
    // - 没有参数
    // - 一定有返回值
    var title2:String{
        print("计算 name \(String(describing: name))")
        return "Mr." + (name ?? "")
    }
    
    // 懒加载 title 本质上是一个闭包
    // 懒加载会在第一次访问的时候，执行，闭包执行结束后，会把结果保存在 title3 中
    // 后续调用，直接返回title3的内容
    // 懒加载的属性会分配空间存储值
    lazy var title3: String? = {
        return "lazy" + (self.name ?? "")
    }()
    
}
