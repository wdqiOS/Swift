//
//  ViewController.swift
//  19-构造函数
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//


/**
    在Swift中，默认同一个项目中，所有的类都是共享的，可以直接访问，不需要import
    所有对象的属性 var，也可以直接访问到
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 实例化 Person
        // () -> alloc / init
        let p = Person()
        
        print(p)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

