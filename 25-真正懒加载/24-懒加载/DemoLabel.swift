//
//  DemoLabel.swift
//  24-懒加载
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {
    
    // 重写构造函数
    // XIB 不会调用，纯代码专用的
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    // initWithCode -> 是使用 Xib / Storyboard 开发的入口
    // 提示：所有UIView 及子类在开发时，一旦重写了构造函数
    // 必须要实现initWithCoder 函数，以保证提供两个通道
    // 方法的添加 Xcode 有智能提示
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupUI()
        
        // fatalError : 如果用XIB 开发，会直接崩溃
        // 禁止 xib / Storyboard 使用本类
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setupUI(){
        print("设置界面")
    }
    



}
