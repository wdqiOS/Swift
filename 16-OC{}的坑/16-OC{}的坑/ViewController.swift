//
//  ViewController.swift
//  16-OC{}的坑
//
//  Created by 汪大强 on 2018/7/9.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let l = UILabel()
        // (l) 参数结束{ 尾随闭包 }
        view.addSubview(l);
        
        // 错误信息：Extra argument in call
        // 调用了额外的参数
        // 不能像OC那样写
        {
            let l = UILabel()
            view.addSubview(l)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

