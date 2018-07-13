//
//  ViewController.swift
//  26-计算型属性
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private lazy var p = Person()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let p = Person()
        
        // 只要调用过一次，懒加载后面的闭包就再也不会执行了！
        p.title3 = nil
        
        // setter
        p.name = "李哲"
        
        // getter
        print(p.name as Any)
        
        print(p.title)
        // Cannot assign to property: 'title' is a get-only property
        // 不能给 get-only 属性设置值
//        p.title = "汪大强"
        print(p.title2)
        // 不允许修改只读属性
//        p.title2 = "汪大强"
        
        print(p.title3)
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        p.name = "汪大强"
        print(p.title2)
        print(p.title3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

