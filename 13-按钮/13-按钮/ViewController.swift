//
//  ViewController.swift
//  13-按钮
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /**
            枚举类型 按钮的 normal
            Swift
            - 类
            - 结构体
            - 枚举（一般不会用到太高级的语法）
            以上三个家伙都有构造函数，都可以有方法，整体看起来，都有原有的类！
         
            - 纯代码，在现在企业中使用比较多
            - XIB小，布局快
         */

        let btn = UIButton()
        // raw 原始的，使用一个值调用枚举的构造函数，创建一个枚举值
        btn.setTitle("come on", for: UIControlState(rawValue: 0))
        
        btn.setTitleColor(#colorLiteral(red: 0.2666666667, green: 0.3215686275, blue: 0.4901960784, alpha: 1), for: UIControlState(rawValue: 0))
        btn.sizeToFit()
        btn.center = view.center
        
        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

