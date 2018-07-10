//
//  ViewController.swift
//  20-构造函数KVC
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let p = Person(dict: ["name": "李哲" as AnyObject, "age":18 as AnyObject, "title":"boss" as AnyObject])
        print("\(p.name ?? "") \(p.age)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

