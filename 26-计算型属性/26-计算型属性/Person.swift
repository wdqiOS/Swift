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
    var title2:String{
        return "Mr." + (name ?? "")
    }
    
}
