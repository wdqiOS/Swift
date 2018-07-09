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
        
        // 解除循环引用，需要打断链条
        // 方法一：OC的方法
        // 细节一 var: weak 只能修饰 var，不能修饰 let
        // 'weak' must be a mutable variable, because it may change at runtime
        // weak 可能会被在运行时被修改 -> 指向的对象一旦被释放，会被自动设置为 nil
//        weak var weakSelf = self;
//        loadData {
//            // 细节2
//            // 解包有两种方式的解包
//            //
//            // ? 可选解包 - 如果 self 已经被释放，不会向对象发送 getter 的消息，更加安全
//            // ! 强行解包 - 如果 self 已经被释放，强行解包会导致崩溃
//
//
//            /**
//                weakSelf.view = 只是单纯的发送消息，没有计算
//                强制解包，因为需要计算，可选项不能直接参与到计算！
//
//             */
//            print(weakSelf?.view as Any)
//        }
        
        // 方法二：Swift推荐方法
        // (weak self)表示 {} 中的所有 self 都是弱引用，需要注意解包
        // OC __weak
        loadData { [weak self] in
            print(self?.view  as Any)
        }
        
        // 方法三:Swift 的另外一个用法，知道就好
        // [unowned self] 表示 {} 中的所有 self 都是assign的，不会强引用，但是，如果对象释放，指针地址不变化
        // 如果对象被释放，继续调用，就会出现野指针的问题
//        loadData { [unowned self] in
//            print(self.view)
//        }
    }

    func loadData(completion: @escaping () -> ()) -> () {
        // 使用属性记录闭包 -> self 对闭包引用
        completionCallBack = completion
        // 异步
        DispatchQueue.global().async {
            print("耗时操作")
            DispatchQueue.main.async {
               Thread.sleep(forTimeInterval: 2.0)
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

