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
        loadData(complete: {
            (result) in
            print("\(result)")
        })
    }
    
    /*
        在异步执行任务，获取结果，通过block/闭包 回调
        闭包的应用场景和 block 完全一致
     */

    func loadData(complete: @escaping (_ result: [String])->()) -> () {
        // 将任务添加到队列，指定执行任务的函数
        // 队列调度任务（block/闭包）以同步/异步的方式执行
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            
            // 休眠
            Thread.sleep(forTimeInterval: 1.0)
            // 获得结果
            let json = ["头条", "八卦", "出大事儿了"]
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新 UI\(Thread.current)")
                // 回调 -> 执行 闭包（传递参数）
                // 传递异步获得的结果
                complete(json)
            }
        }
    }


}

