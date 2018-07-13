//
//  ViewController.swift
//  27-重写swift中设置数据模型
//
//  Created by 汪大强 on 2018/7/14.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person()
        p.name = "李哲"
        
        let label = DemoLabel(frame: CGRect(x: 20, y: 20, width: 100, height: 40))
        view.addSubview(label)
        
        // 将模型设置给 label
        label.person = p
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

