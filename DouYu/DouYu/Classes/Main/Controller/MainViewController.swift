//
//  MainViewController.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/9.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
extension MainViewController
{
    fileprivate func setupUI()
    {
        setupTabbar(name: "Home")
        setupTabbar(name: "Live")
        setupTabbar(name: "Follow")
        setupTabbar(name: "Profile")
    }
    
    fileprivate func setupTabbar(name : String)
    {
        let vc = UIStoryboard(name:name, bundle: nil).instantiateInitialViewController()!
        addChildViewController(vc)
    }
    
    
}
