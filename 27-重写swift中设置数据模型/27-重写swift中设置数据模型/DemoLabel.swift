//
//  DemoLabel.swift
//  27-重写swift中设置数据模型
//
//  Created by 汪大强 on 2018/7/14.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

   // 模型 -> 给视图设置模型，由视图自己根据模型的数据，决定显示的内容
    var person: Person? {
        // *** 就是替代 OC 中重写 setter 方法
        // 区别：再也不需要考虑 _成员变量 = 值！
        // OC 中如果是 copy 属性，应该 _成员变量 = 值.copy!
        didSet{
            // 此时 name 属性已经有值，可以直接使用 设置 UI 内容
            text = person?.name
        }
    }
    

}
