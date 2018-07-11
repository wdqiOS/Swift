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
    // 基本数据类型在OC 中没有可选，如果定义成可选，运行时获取不到，使用KVC就会崩溃
    @objc var age:Int = 0
    // private 的属性，使用运行时，同样获取不到属性（可以获取到 ivar），同样会让KVC崩溃
    @objc private var title:String?
    
    // 目标：使用运行时获取当前类所有属性的数组
    // 运行时是加钱项，不需要会写，但是一定要会说！
    // 获取 ivar 列表是所有第三方框架字典转模型的基础！
    class func propertyList()-> [String]{
        var count:UInt32 = 0
        // 1、获取类的属性列表 返回属性列表的数组 可选项
        let list = class_copyPropertyList(self, &count)
        print("属性的数量 \(count)")
        // 2.遍历数组
//        for i in 0..<Int(count) {
//            // 3.根据下标获取属性
//            // objc_property_t?
//            // 从可选的数组中获取下标对应的结果，可能会nil
//            let pty = list?[i]
//
//            // 4.获取属性的名称 C 语言字符串
//            // Int8 -> Byte -> Char -> c 语言的字符串
//            // 需要用属性获取名称，属性必须存在，用了强行解包（!）
//            let cName = property_getName(pty!)
//            // print("\(cName)")
//
//            // 5.转换成 String 字符串
//            // 必须用C语言字符串转换成String
//            let name = String(utf8String: cName)
//            print(name as Any)
//        }
        
        for i in 0..<Int(count) {
            // 3.根据下标获取属性
            // 使用guard语法，依次判断每一项是否有值，只要有一项为nil，就不会再执行后续的代码
            guard let pty = list?[i],
                let cName:UnsafePointer<Int8> = property_getName(pty),
                let name = String(utf8String: cName)
                else{
                    
                    // 继续遍历下一个
                    continue
            }
            print(name);
        }
        
        // 3.释放 C 语言的对象
        free(list)
        return []
    }
    
}
