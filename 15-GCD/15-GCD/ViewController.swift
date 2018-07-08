//
//  ViewController.swift
//  15-GCD
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadData()
    }

    func loadData() -> () {
        // 将任务添加到队列，指定执行任务的函数
        // 队列调度任务（block/闭包）以同步/异步的方式执行
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新 UI\(Thread.current)")
            }
        }
    }


}

