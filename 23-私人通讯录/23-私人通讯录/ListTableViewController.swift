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
    
    
    @IBAction func newPerson(_ sender: Any) {
        // 执行 segue 跳转界面
        performSegue(withIdentifier: "list2detail", sender: nil)
    }
    // MARK: 控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 类型转换 as
        // Swift 中String 之外，绝大多数使用 as  需要 ? / ！
        // as! / as? 直接根据前面的返回值来决定
        // 注意：if let / guard let 判空语句，一律使用 as?
        let vc = segue.destination as! DetailViewController
        
        // 设置选中的person indexPath
        if let indexPath = sender as? IndexPath{
            // indexPath 一定有值
            vc.person = personList[indexPath.row]
            
            // 设置编辑完成的闭包
            vc.completionCallBack = {
                // 刷新指定行
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
            }
        }else{ // 表示新建
            // 新建个人记录
            
            // 注意循环引用 vc引用闭包 闭包引用vc
            // 使用weak 
            vc.completionCallBack = { [weak vc] in
               // 1.获取明细控制器的 person
                guard let p = vc?.person else{
                    return
                }
                // 2.插入到数组顶部
                self.personList.insert(p, at: 0)
                // 3.刷新表格
                self.tableView.reloadData()
                
                /**
                 block 的特点
                 1、定义block可以和当前上下文在一起
                 2、便于阅读和维护
                 3、可以根据不同的要求传递不同的代码
                 */
                
            }
        }
        
    }
    
    // MARK: - 代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // 执行 segue
        performSegue(withIdentifier: "list2detail", sender: indexPath)
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
