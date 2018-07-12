//
//  ListTableViewController.swift
//  23-私人通讯录
//
//  Created by 汪大强 on 2018/7/12.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    // 联系人数组
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (list) in
            print(list)
            // 拼接数组 闭包中定义好的代码在需要的时候执行，需要‘self’指定语境
            self.personList += list
            
            // 刷新表格
            self.tableView.reloadData()
        }
        
    }

    // 模拟异步，利用闭包回调
    private func loadData(completion:@escaping (_ list:[Person])->()) ->(){
        DispatchQueue.global().async {
            print("正在努力加载中……")
            
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 0..<20 {
                
                let p = Person()
                
                p.name  = "wang - \(i)"
                p.phone = "10086" + String(format: "%06d", arc4random_uniform(1000000))
                p.title = "boss"
                
                arrayM.append(p)
            }
            
            // 主线程回调
            DispatchQueue.main.async {
                // 回调，执行闭包
                completion(arrayM)
            }
 
        }
    }
    
    // MARK: - 数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        
        
        return cell
    }

}
