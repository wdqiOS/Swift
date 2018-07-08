//
//  ViewController.swift
//  05-可选项的判断
//
//  Created by 汪大强 on 2018/7/6.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo4(name: "李哲", age: 19)
    }
    
    func demo4(name: String?, age: Int?) {
        
        if let name = name, let age = age {
            // 非空的 name 和 age 仅在 {} 内有效！
            print(name + String(age))
            print("----------")
        }
        
        
        // guard let & if let 的技巧
        // 使用同名的变量接收值，在后续使用的都是非空值，不需要解包
        // 好处，可以避免起名字的烦恼！
        guard let name = name,let age = age else {
            print("姓名或者年龄 为nil")
            return
        }
        print(name + String(age))
    }
    
    // MARK: - guard 守卫 / 守护
    // guard
    func demo3() {
        let oName: String? = "李哲"
        let oAge: Int? = 18
        
        guard let name = oName,
           let age = oAge else{
                print("姓名或者年龄为 nil")
                return
        }
        // 代码执行至此，name 和 age 一定有值
        // 通常判断是否有值之后，会做具体的逻辑实现，通常代码多
        // 如果用 if let 凭空多了一层分支，guard 是最低分支层次的办法
        // guard 的语法是 Swift 2.0 推出的！
        print(name + String(age))
        
    }
    
    // MARK: - if let / var 连用语法，目的就是判断值
    // 不是单纯的 if
    func demo2() {
        let oName: String? = "李哲"
        let oAge: Int? = 10
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
        
        // if let 连用，判断对象的值是否为 nil {} 内一定有值，可以直接使用，不需要解包
        // if var 连用，{} 可以对值进行修改！
        if var name = oName,
            let age = oAge {
            
            name = "汪大强"
            // 进入分支之后，name 和 age 一定有值，不需要解包
            // name 和 age 的作用域仅在 {} 中
            print(name + String(age))
        }else{
            print("name 或 age 为 nil")
        }
        
        
        
    }
    
    func demo1(x: Int?, y: Int?) {
        /**
         ?? 是一个简单的 三目
         - 如果有值 使用值
         - 如果没有值，使用 ?? 后面的值替代
         */
        print((x ?? 0) + (y ?? 0))
        
        let name: String? = "李哲"
        print((name ?? "") + "您好")
        
        // ?? 操作符号的优先级 ‘低’，使用的时候，最好加上 () 包一下
        print(name ?? "" + "您好")
        
        
    }
    func demo(x: Int?, y: Int?) {
//        let x:Int? = 10
//        let y:Int? = 100
        
        // 1.强行解包有风险
        // print(x! + y!)
        // 2.使用 if 判断
        // 但是：如果直接使用 if 一不小心 会让代码很丑陋
        if x != nil && y != nil {
            print(x! + y!)
        }else{
            print("x 或者 y 为 nil")
        }
    }


}

