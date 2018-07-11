//
//  UIButton+extension.swift
//  18-加法计算器
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

extension UIButton {
    convenience init(title:String,color:UIColor = UIColor.darkGray) {
        self.init()
        
        self.setTitle(title, for: UIControlState(rawValue: 0))
        self.setTitleColor(color, for: UIControlState(rawValue: 0))
        self.sizeToFit()
    }
    
}
