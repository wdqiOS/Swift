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
    
    // 定义label 需要使用 ？ ！
//    var label: DemoLabel?
    // 初始化并且分配空间 label 会提前创建
    // 移动端开发，‘延迟加载’减少内存消耗
    // 懒加载 - lazy
    /**
        1.能够延迟创建
        2.最大的好处 -> 解除解包的烦恼!
     */
    //  lazy var label: DemoLabel = DemoLabel()
    // 懒加载本质上是一个‘闭包’
    // 完整写法如下：供参考 日常开发不建议这么写
    
    /**
        {} 包装代码
        () 执行代码
        日常开发：
        1、闭包中的智能提示不好
        2、闭包中如果出现 self ，还需要注意循环引用
     */
    lazy var label = {()-> DemoLabel in
            let l = DemoLabel()
            // 设置 label 的属性
            return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    private func setupUI() {
        
        // 2.添加到试图
        // ! --- 解包 为了参与计算，addSubview 用 subviews 数值记录控件，数组中不允许插入 nil
        // ？ --- 可选解包，调用方法，如果为nil，不调用方法，但是不能参与计算
        view.addSubview(label)
        
        label.text = "hello world"
        label.sizeToFit()
        label.center = view.center
        
    }

}

