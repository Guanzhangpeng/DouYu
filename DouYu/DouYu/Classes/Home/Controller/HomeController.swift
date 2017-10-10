//
//  HomeController.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/10.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit
import ZPSegmentBar

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
// MARK:- 布局UI
extension HomeController
{
    fileprivate func setupUI()
    {
        setupNavigationBar()
        setupSegmentBar()
        
    }
    fileprivate func setupSegmentBar()
    {
    
        let frame=CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        
        var style = ZPStyle()
        style.titleViewBackgroundColor = .white
        style.normalColor = .darkGray
        style.isScrollEnabled=false; //标题是否可以滚动,默认为true;
        style.isShowCover = true    //标题是否显示遮盖,默认为true;
        style.isShowBottomLine=true //标题下方是否显示BottomLine,默认为true;
        style.isNeedScale=true      //标题文字是否缩放,默认为true;
        
        var childVcs = [UIViewController]()
        let recommend = RecommendController()
        childVcs.append(recommend)
        
       
        for _ in 0..<3 {
            let vc = UITableViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        //创建ZPSegmentBarView
        let segmentView = ZPSegmentBarView(frame: frame, titles: titles, style: style, childVcs: childVcs, parentVc: self)
        view.addSubview(segmentView)
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
