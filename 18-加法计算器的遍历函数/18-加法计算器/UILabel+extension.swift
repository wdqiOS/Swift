//
//  UILabel+extension.swift
//  18-加法计算器
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(frame:CGRect, text:String = "=", textAlignment:NSTextAlignment = .center){
        self.init(frame:frame)
        self.text = text
        self.textAlignment = textAlignment
    }
}
