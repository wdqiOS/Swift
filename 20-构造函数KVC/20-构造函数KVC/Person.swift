//
//  Person.swift
//  20-构造函数KVC
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

/**
1.定义模型属性的时候，如果是对象，通常都是可选的
    - 在需要的时候创建
    - 避免写构造函数，可以简化代码
2.如果是基本数据类型，不能设置成可选的，而且要设置初始值，否则KVC会崩溃
3.使用KVC方法之前，应该调用super.init()保证对象实例化完成
4.如果需要使用 KVC 设置数据，属性不能是 private 的
 */

class Person: NSObject {
    // name 属性是可选的， 在 OC 中很多的属性都是在需要的时候创建的
    // 例如：vc.view / tableViewCell.textLabel / detailLabel / imageView
    // 因为在手机开发，内存很宝贵，有些属性并不一定需要分配空间的
    // 延迟加载，在需要的时候再创建
    @objc var name: String?
    // 给基本数据类型初始化
    // - 使用KVC 会提示无法找到age的key
    // 原因：Int是一个基本数据类型的结构体，OC中没有，OC中只有基本数据类型
    // var age: Int?
    @objc var age: Int = 0
    
    // 如果是 private 属性 使用KVC设置值的时候，同样无法访问
    // - 如果设置成 private 属性 / 方法，禁止外部访问
    @objc private var title: String?
    
    
    // 重载构造函数，使用字典为本类设置初始值
    init(dict: [String: AnyObject]) {
        // 保证对象已经完全初始化完成
        super.init()
        
        //self' used in method call 'setValuesForKeys' before 'super.init' call
        // 使用 self 的方法 'setValuesForKeys' 之前，应该调用 super.init
        // KVC的方法，是 OC 的方法，在运行时给对象发送消息
        // 要求对象已经实例化完成
        setValuesForKeys(dict)
    }
    
    // 重写父类的方法
    override func setValue(_ value: Any?, forKey key: String) {
        // 没有调用 super ，将父类的代码实现完全覆盖，不会崩溃
    }
}
