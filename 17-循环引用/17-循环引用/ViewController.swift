//
//  ViewController.swift
//  17-循环引用
//
//  Created by 汪大强 on 2018/7/9.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 属性就是一个 var
    var completionCallBack: (()->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // block 中如果出现 self 要特别小心
        // ‘循环’引用，单方向引用是不会产生循环引用
        // 只是闭包对 self 进行了copy，闭包执行完成之后，会自动销毁，同时释放对 self 的引用
        // 同时需要 self 对闭包引用
        loadData {
            print(self.view)
        }
    }

    func loadData(completion: @escaping () -> ()) -> () {
        // 使用属性记录闭包 -> self 对闭包引用
        completionCallBack = completion
        // 异步
        DispatchQueue.global().async {
            print("耗时操作")
            DispatchQueue.main.async {
                
                // 回调，执行闭包
                completion()
            }
        }
    }
    
    // 类似于OC的dealloc
    deinit {
        print("我去了")
    }

}

