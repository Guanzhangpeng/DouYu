//
//  AppDelegate.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/9.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UITabBar.appearance().tintColor = UIColor.orange
        
        return true
    }
}

