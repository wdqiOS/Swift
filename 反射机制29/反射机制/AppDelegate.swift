//
//  AppDelegate.swift
//  反射机制
//
//  Created by 汪大强 on 2018/7/14.
//  Copyright © 2018年 汪大强. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    /**
        1. 知道Swift 中有命名空间
            - 在同一个命名空间下，全是共享
            - 第三方框架使用 Swift 如果直接拖拽到项目中，从属于同一个命名空间，很有可能冲突
            - 以后尽量都要用 cocospod
        2. 重点要知道 Swift 中NSClassFromString（反射机制） 的写法
            - 反射最重要的目的，就是为了解耦！
            - 搜索反射机制和工厂方法！
            - 提示：会发现一个简单的功能，写的很复杂！
            - 但是，封装的很好，而且弹性很大！
     */

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 1.实例化window
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        
        // 2.设置根控制器，需要加命名空间-> 默认就是 项目名称 （最好不要有数字和特殊符号）
        let clsName = "反射机制.ViewController"
        let cls = NSClassFromString(clsName) as? UIViewController.Type
        
        // 使用类创建视图控制器
        let vc = cls?.init()
        
        window?.rootViewController = vc
        
        // 3.让 window 可见
        window?.makeKeyAndVisible()
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

