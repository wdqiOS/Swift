//
//  Person.swift
//  21-运行时加载属性列表
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class Person: NSObject {
    @objc var name:String?
    @objc var age:Int = 0
    @objc var title:String?
    
    // 目标：使用运行时获取当前类所有属性的数组
    class func propertyList()-> [String]{
        var count:UInt32 = 0
        // 1、获取类的属性列表 返回属性列表的数组 可选项
        let list = class_copyPropertyList(self, &count)
        print("属性的数量 \(count)")
        // 2.遍历数组
        for i in 0..<Int(count) {
            // 3.根据下标获取属性
            let pty = list?[i]
            
            // 4.获取属性的名称 C 语言字符串
            // Int8 -> Byte -> Char -> c 语言的字符串
            let cName = property_getName(pty!)
//            print("\(cName)")
            
            // 5.转换成 String 字符串
            let name = String(utf8String: cName)
            print(name as Any)
        }
        
        // 3.释放 C 语言的对象
        free(list)
        return []
    }
    
}
