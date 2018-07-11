//
//  UITextField+extension.swift
//  18-加法计算器
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

// extension 类似于OC中的category
extension UITextField {
    convenience init(frame:CGRect ,placeholoader:String, fontSize:CGFloat = 14){
        // 实例化当前对象
        self.init(frame: frame)
        // 访问属性
        self.borderStyle = .roundedRect
        self.placeholder = placeholoader
        self.font = UIFont.systemFont(ofSize: fontSize)
        
        
    }
}
