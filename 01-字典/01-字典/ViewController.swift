//
//  ViewController.swift
//  01-字典
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo4()
    }
    
    // MARK:合并
    func demo4() {
        var dict:[String:Any] = ["name":"李哲", "age":18, "a":"3"]
        let dict2:[String:Any] = ["name1":"汪大强", "height":1.7]
        // 将dict2 合并到 dict
        // 提示：字典不能直接相加
        // dict += dict2
        
        // 思路：遍历 dict2 依次设置
        // 如果key存在会修改
        // 如果key不存在，会新增！
        for e in dict2 {
            dict[e.key] = dict2[e.key]
        }
        print(dict)
    }
    
    // MARK: 遍历
    func demo3() {
        let dict:[String:Any] = ["name":"李哲", "age":18, "a":"3"]
        // 元组(key: String, value: Any)
        
        for e in dict {
            print("\(e.key) \(e.value)")
        }
        
        print("-----------")
        /**
            前面的 是 key
            后面的 是 value
            具体的名字可以随便
         
            OC 遍历 for in 只能获取到KEY
         */
        for(key,vvv) in dict{
            print("\(key) \(vvv)")
        }
    }
    
    
    
    // MARK:增删改
    func demo2() {
        // 可变 var / 不可变 let
        var dict:[String:Any] = ["name":"李哲", "age":18, "a":"3"]
        // 新增 - 如果key不存在就是新增
        dict["title"] = "大哥"
        print(dict)
        
        // 修改 - 字典中，是通过 key 取值，key在字典中必须是唯一的！
        // 如果key存在就是修改
        dict["name"] = "汪大强"
        print(dict)
        
        // 删除 - 直接给定key
        // 字典是通过key来定位值的，key必须是可以 hash（哈希）的 MD5一种
        // hash 就是将字符串变成唯一的“整数”，便于查找，提高字典遍历的速度
        dict.removeValue(forKey: "age")
        print(dict)
    }
    
    // MARK:字典定义
    func demo1() {
        // OC 定义字典使用 {}
        // Swift中同样使用[]
        // [KEY: VALUE]-->[String : NSObject]
        let dict:[String:Any] = ["name":"李哲", "age":18, "a":"3"]
        print(dict)
        
        // 定义字典数组 - 提示，这种格式在 开发中使用的最多！
        //
        let array = [
            ["name":"李哲", "age":18, "a":"3"] ,
            ["name":"李哲", "age":20, "a":"3"]
        ]
        print(array)
        
    }


}

