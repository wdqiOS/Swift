//
//  ViewController.swift
//  26-计算型属性
//
//  Created by 汪大强 on 2018/7/13.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person()
        
        // setter
        p.name = "李哲"
        
        // getter
        print(p.name as Any)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

