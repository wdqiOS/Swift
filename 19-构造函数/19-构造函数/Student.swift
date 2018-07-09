//
//  Student.swift
//  19-构造函数
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class Student: Person {
    /// 学号
    var no: String
    
    // 重写 person 的构造函数：父类方法不能满足需求
    override init() {
        print("student")
        no = "001"
        super.init()
    }
}
