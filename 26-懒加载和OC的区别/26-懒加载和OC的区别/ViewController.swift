//
//  ViewController.swift
//  26-懒加载和OC的区别
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // private 限定
    // 注意：和OC不同！
    // 一旦 label 被设置为nil，懒加载也不会再次执行
    // 懒加载的代码只会在第一次调用的时候，执行闭包，然后将闭包的结果保存在 label 中
    private lazy var label:UILabel? = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 会调用懒加载创建label
        print(label as Any)
        
        label?.text = "hello"
        label?.sizeToFit()
        
        print(label as Any)
        
        // 释放label
        label = nil
        
       
        print(label as Any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        // Swift 中一定注意不要主动清理视图或者控件
        // 因为懒加载不会再次创建!!!!
        
    }


}

