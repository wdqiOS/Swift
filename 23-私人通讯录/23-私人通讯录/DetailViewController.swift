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
        // 2、用 UI 更新 person 的内容
        person?.name = nameText.text
        person?.phone = phoneText.text
        person?.title = titleText.text
        
        // 4、返回上一级内容
        // 方法的返回值没有使用
        // _ 可以忽略一切不关心的内容
       //_ =  navigationController?.popViewController(animated: true)
        navigationController?.popViewController(animated: true)
    }
    
}
