//
//  HomeController.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/10.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.red
        setupUI()
    }
    
}
// MARK:- 布局UI
extension HomeController
{
    fileprivate func setupUI()
    {
        setupNavigationBar()
    }
    fileprivate func setupNavigationBar()
    {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imgName: "logo")
        
        let size = CGSize(width: 40, height: 40 )
        let searchItem = UIBarButtonItem(imgName: "btn_search", selectedImgName:"btn_search_clicked" , size: size)
        let historyItem = UIBarButtonItem(imgName: "image_my_history", selectedImgName: "Image_my_history_click", size: size)
        let scanItem = UIBarButtonItem(imgName: "Image_scan", selectedImgName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [searchItem , historyItem , scanItem ]
    }
}
