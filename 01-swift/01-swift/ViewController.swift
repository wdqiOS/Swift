//
//  ViewController.swift
//  01-swift
//
//  Created by 汪大强 on 2018/7/5.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit
/**
 从 Xcode 8.0 开始，目前所有的插件都无法工作
 /// option + cmd + / 增加文档注释
 1、OC [[UIView alloc] initWithXXX:]
    Swift UIView(XXX:)
 
    类名() == alloc / init 等价
 
 2、类方法
    OC [UIColor redColor]
    Swift UIColor.red
 
 3、访问当前对象的属性，可以不使用’self‘
    建议：都不用，在编译器提示的时候，再添加，会对”语境“有更好的体会
    原因：闭包（类似于 OC block），需要使用 self
 
 4、没有’;‘
    ';' 目的分隔语句的，在 Swift中，默认不需要
 
 5、枚举类型
    OC UIButtonTypeContactAdd
    Swift '.'contactAdd
 
 6、监听方法
 OC @selector 如果带参数，不需要使用呢':'
    Swift #selector
 7、调试
    OC  NSLog
    Swift print
        - 没有时间
        - 效率比 NSLog 要高
    OC __FUNCTION__
    Swift #function
 */
class ViewController: UIViewController {
    // MARK: - 视图生命周期
    // MARK: 视图加载完成
    /// option + cmd + / 增加文档注释
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a = 1
        let b = 2
        // 1、创建一个试图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
        // 设置试图背景色
        v.backgroundColor = UIColor.red;
        // 添加到当前试图
        view.addSubview(v)
        view.addSubview(v)
        v.center = view.center
        // 2、创建按钮
        let btn = UIButton(type: .contactAdd)
        
        v.addSubview(btn)
        
        
        btn.addTarget(self, action: #selector(clickme), for: .touchUpInside)
        
        // color + 回车
        let v1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        v1.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)    // TODO: 应该设置新的颜色
        
        view.addSubview(v1)
        
        let iv = UIImageView(image: #imageLiteral(resourceName: "头像"))  // FIXME: 应该更改头像
        iv.center = view.center
        view.addSubview(iv)
        
    }
    
    @objc func clickme(btn: UIButton) -> () {
        print(#function)
        print("哈哈")
        print(btn)
    }
    
    // MARK: 接收到内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

