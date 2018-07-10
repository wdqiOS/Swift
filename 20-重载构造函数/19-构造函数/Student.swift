//
//  Student.swift
//  19-构造函数
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class Student: Person {
    var no: String
    
    init(name: String, no: String) {
        self.no = no
        
        // 调用父类方法,给 name 初始化
        super.init(name:name)
    }
}
