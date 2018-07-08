//
//  ViewController.swift
//  09-字符串
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
    
    // MARK: - 字符串的子串
    func demo4() {
        // 建议：一般使用NSString 作为中转，因为Swift取字符串的方法一直在优化
        // 更容易理解
        let str = "我们一起飞"
        
        // 1.NSString
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        print(s1)
        
        // 2.String的方法
        // 偶尔使用很方便，但是复杂的截取，不好理解
        //let r = 0..<5
        // str.substring(with: <#T##Range<String.Index>#>)
        
        // startIndex position=0
        print(str.startIndex)
        // endIndex position == str.count
        print(str.endIndex)
        
        let s2 =  str.substring(from: "我们".endIndex)
        print(s2)
        
        let s3 = str.substring(from: "abc".endIndex)
        print(s3)
        
        // 取子字符串的范围
        guard let range = str.range(of: "一起") else{
            print("没有找到")
            return
        }
        
        print("----------")
        print(range)
        print(str.substring(with: range))
        
        
    }
    
    // MARK: 格式化
    func demo3() {
        let h = 8
        let m = 9
        let s = 6
        
        let dateStr = "\(h):\(m):\(s)"
        print(dateStr)
        
        // 使用格式字符串格式化
        let dateStr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(dateStr1)
    }
    // MARK: 字符串的拼接 NSString stringWithForamt:xxx
    func demo2() {
        let name = "李哲"
        let age = 28
        let title: String? = "我爱你"
        let point = CGPoint(x: 10, y: 10)
        
        // \(变量/常量)
        // 拼接的字符串需要注意 可选项 Optional
        let str = "\(name) \(age) \(title ?? "") \(point)"
        print(str)
        
    }
    
    // 字符串的长度
    func demo1() {
        let str = "hello world你好"
        // 返回指定编码的对应的字节数量
        // UTF8 的编码（0-4个），每个汉字是3个字节
        print(str.lengthOfBytes(using: .utf8))
        
        // 2> 字符串长度 - 返回字符的个数（推荐使用）
        print(str.count)
        
        // 3> 使用NSString中转
        /**
            OC 写法(WDQCell *)[tableView dequ…………] 类型转换
            swift 中可以使用 ‘值 as 类型’ 类型转换
         */
        let ocStr = str as NSString
        print(ocStr.length)
    }
    
    // MARK: 字符串的遍历
    func demo() {
        // NSString 不自持以下遍历
        let str: NSString = "我要飞得更高"
//        for i in str.characters {
//            print(i)
//        }
    }


}

