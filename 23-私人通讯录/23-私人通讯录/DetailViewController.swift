//
//  DetailViewController.swift
//  23-私人通讯录
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    var person: Person?
    
    // 完成回调属性
    // 闭包的返回值是可选的
//    var completionCallBack:()->()?
    // 闭包是可选的
    var completionCallBack:(()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 判断 person 是否有值
        if person != nil {
            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
        }
        
    }


    @IBAction func savePerson(_ sender: Any) {
        
        // 1.判断person 是否为nil，如果是就是新建
        if person == nil{
            person = Person()
        }
        
        // 2、用 UI 更新 person 的内容
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
        // 3、执行闭包回调
        // OC 中执行block前都必须判断是否有值，否则容易崩溃
        // ! 强行解包(Xcode 帮助修订，一定不要用 ‘!’)
        // ? 可选解包 -> 如果 闭包为nil，就什么也不做！
        completionCallBack?()
        
        
        // 4、返回上一级内容
        // 方法的返回值没有使用
        // _ 可以忽略一切不关心的内容
       //_ =  navigationController?.popViewController(animated: true)
        navigationController?.popViewController(animated: true)
    }
    
}
