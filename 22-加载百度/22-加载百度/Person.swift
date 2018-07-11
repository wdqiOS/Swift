//
//  Person.swift
//  22-加载百度
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

// 便利构造函数
/**
    1.条件判断，只有满足条件，菜实例化对象，可以防止造成不必要的内存开销
    2.简化对象的创建
    3.本身不负责属性的创建和初始化工作
 */
class Person: NSObject {
    
    var name: String?
    
    // 重载构造函数
    /**
        1.遍历构造函数允许返回 nil
            - 正常的构造函数一定会创建对象
            - 判断给定的参数是否符合条件，如果不符合条件，直接返回nil，不会创建对象，减少内存开销
        2.**只有**遍历构造函数中使用 ‘self.init’ 构造当前对象
            - 没有 convenience 关键字的构造函数是负责创建对象的，反之用来检查条件的，本身不负责对象的创建
        3.如果要在遍历构造函数中使用，当前对象的属性，一定要在‘self.init' 之后
     */
   convenience init?(name:String, age:Int) {
        if age > 100 {
            return nil
        }
    
        // 'self' used in property access 'name' before 'self.init' call
        // 使用 self 访问name 之前 应该先调用 self.init
//        self.name = name
        // 实例化当前对象
        self.init()
    
        // 执行到此 self 才允许被访问，才能够访问到对象的属性
        self.name = name
    }
    
    override init() {
//        self.init()
        super.init()
    }

}
