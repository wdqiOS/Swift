//
//  ViewController.swift
//  11-tableview
//
//  Created by 汪大强 on 2018/7/8.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    
    // MARK: -UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        // 提示：textLabel 是可选的
        // 代码中 ？ 是自动带的，如果textLabel有，就使用，如果没有，就什么也不做
        cell.textLabel?.text = "hello ~~~~ \(indexPath.row)"
        return cell
    }

    func setupUI() {
        // 1.创建表格
        let tv = UITableView(frame: view.frame, style: .plain)
        // 2.添加到视图
        view.addSubview(tv)
        
        // 3.注册可重用 cell
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        
        // 4.设置数据源
        tv.dataSource = self
    }


}

