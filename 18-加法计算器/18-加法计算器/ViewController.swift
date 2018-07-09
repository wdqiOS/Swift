//
//  ViewController.swift
//  18-加法计算器
//
//  Created by 汪大强 on 2018/7/10.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numText1:UITextField?
    var numText2:UITextField?
    var resultLabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    
    
    /// 计算结果
    @objc func clac() -> () {
        print(#function)
        print("点击了")
        
        print("\(numText1?.text ?? "0") ~~ \(numText2?.text ?? "0")")
        
        // 将文本框内容转换为数值
        // Int? 如果文本框内容不是数字 Int 之后是 nil
        // 先测试 let num1 = Int(numText1?.text ?? "")
        
        // 方法一：guard let 守护
        guard let num1 = Int(numText1?.text ?? ""),
            let num2 = Int(numText2?.text ?? "") else {
            resultLabel?.text = "0"
            print("请输入数字")
                return
        }
        resultLabel?.text = "\(num1 + num2)"
        
        // 方法二：if let
//        if let num1 = Int(numText1?.text ?? "") {
//            if let num2 = Int(numText2?.text ?? "") {
//                resultLabel?.text = "\(num1 + num2)"
//                return
//            }
//        }
//        resultLabel?.text = "0"
//        print("请输入数字")
        
        
        
    }

    func setupUI() -> () {
        // 1.两个textfield
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        // 记录属性
        numText1 = tf1
        numText2 = tf2
        
        // 2、三个label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 20))
        l1.text = "+"
        l1.textAlignment = .center
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 20))
        l2.text = "="
        l2.textAlignment = .center
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 20))
        l3.text = "0"
        l3.textAlignment = .right
        view.addSubview(l3)
        
        // 记录属性
        resultLabel = l3
        
        // 3、一个button
        let btn = UIButton()
        btn.setTitle("计算", for: UIControlState(rawValue: 0))
        btn.setTitleColor(UIColor.black, for: UIControlState(rawValue: 0))
        
        btn.sizeToFit()
        btn.center = view.center
        
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(clac), for: .touchUpInside)
        
    }


}

