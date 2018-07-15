//
//  Bundle+Extension.swift
//  反射机制
//
//  Created by 汪大强 on 2018/7/14.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import Foundation

// 返回命名空间字符串
extension Bundle {
//    func namespace() -> String {
////       return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
//        return infoDictionary?["CFBundleName"] as? String ?? ""
//    }
    
    // 计算型属性类似于函数，没有参数，有返回值
    var namespace: String{
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
