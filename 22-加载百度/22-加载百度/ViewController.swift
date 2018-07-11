//
//  ViewController.swift
//  22-加载百度
//
//  Created by 汪大强 on 2018/7/11.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "http://www.baidu.com")
        // 发起网路请求
        URLSession.shared.dataTask(with: url!) { (data, res, err) in
            print("\(data ?? nil)")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

