//
//  ViewController.swift
//  22-加载百度
//
//  Created by 汪大强 on 2018/7/11.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person(name: "汪大强", age: 10)
        print(p?.name as Any)
        
        // URL 的构造函数可以返回 nil
        // 构造函数就是实例化对象的！
        let url = URL(string: "http://www.baidu.com")
        // 发起网路请求
        // - 和 OC 的区别，闭包的所有参数，需要自己写，OC是直接带入
        // - 如果不关心的值，可以直接“_”忽略
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if(error != nil){
//                print("网络请求失败")
//                return
//              }
            
            guard let data = data else{
                print("网络请求失败 \(error!)")
                return
            }
            
            // 将 data 转换为 String
            let html = String(data: data, encoding: .utf8)
            print(html as Any)
            
    
            
        }.resume()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

