//
//  ViewController.swift
//  24-懒加载
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

/**
    ! 强行解包 ：目的是为了参与计算
                但是存在风险，最好需要判断是否为nil
                可以用guard let / if let
 
    ? 可选解包 : 不参与计算
            主要用于调用方法 ：如果对象存在就调用方法；如果对象为nil，就什么也不做
 
 类型转换:
        as? ：前面的结果是可选的
                if let / guard let 一定用as?
 
        as! : 前面的结果一定有值
 
        as  ： NSString -> String
                NSArray -> []
                NSDictionary -> []
                因为底层做了结构体和OC对象的桥接
 
    什么时候需要类型转换？
        将父类转换为子类
        因为子类的属性和方法比父类多
        OC中调用（DemoCell *）tableView dequeueXXXX
        转换有风险，如果没有对应的属性和方法会崩溃
 */

class ViewController: UIViewController {
    
    // 定义 只能用 ？表示变量可以为 nil，或者有一个值
    // 只是定义，没有分配空间和初始化
    var label: DemoLabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    private func setupUI() {
        
        // 1.创建控件
        // 初始化及分配空间
        label = DemoLabel()
        
        
        // 2.添加到试图
        // ! --- 解包 为了参与计算，addSubview 用 subviews 数值记录控件，数组中不允许插入 nil
        // ？ --- 可选解包，调用方法，如果为nil，不调用方法，但是不能参与计算
        view.addSubview(label!)
        
        label?.text = "hello world"
        label?.sizeToFit()
        label?.center = view.center
        
    }

}

