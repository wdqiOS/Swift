//
//  Person.swift
//  19-构造函数
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

/**
    1.给自己的属性分配空间并且设置初始值
    2.调用父类的构造函数，给父类的属性分配空间设置初始值
        NSObject 没有属性，只有一个成员变量 isa
 
 */

// Class 'Person' has no initializers
// Person类没有‘初始化器’

class Person: NSObject {
    var name:String
    
    // 重写->父类有这个方法，子类重新实现
    override init() {
        name = "李哲"
        super.init()
        
    }
}
