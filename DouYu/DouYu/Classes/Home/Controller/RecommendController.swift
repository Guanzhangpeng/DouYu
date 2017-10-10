//
//  RecommendController.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/10.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit
fileprivate let kItemMargin : CGFloat = 10
fileprivate let kHeaderH : CGFloat = 50
fileprivate let kItemW = (kScreenW - 3 * kItemMargin) / 2
fileprivate let kItemH = kItemW * 3 / 4
fileprivate let kNormalCellID = "kNormalCellID"
fileprivate let kHeaderID = "kHeaderID"

class RecommendController: UIViewController {

    // MARK:- 数据懒加载
    fileprivate lazy var collectionView : UICollectionView = {
        
        //设置布局属性
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: kItemW, height: kItemH)
        layout.minimumLineSpacing = kItemMargin
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 0, left: kItemMargin, bottom: 0 , right: kItemMargin )
        layout.headerReferenceSize = CGSize(width: kScreenW, height: kHeaderH)
        

        let y = kStatusBarH + kNavigationBarH + kTabBarH
        let height = kScreenH - y
        let frame = CGRect(x: 0, y: 0, width: kScreenW, height: height)
        let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        //设置CollectionView的相关属性
        collectionView.backgroundColor = .white
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: kNormalCellID)
        collectionView.register(UINib(nibName:"CollectionHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: kHeaderID)
//        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: kHeaderID)

        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        collectionView.dataSource = self
        return collectionView
    }()
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupUI()
    }
    
}
// MARK:- 布局UI
extension RecommendController
{
    fileprivate func setupUI()
    {
        view.addSubview(collectionView)
    }
}
// MARK:- UICollectionViewDataSource
extension RecommendController : UICollectionViewDataSource
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if  section == 0
        {
            return 8
        }
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kNormalCellID, for: indexPath)
        cell.backgroundColor = UIColor.randomColor()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: kHeaderID, for: indexPath)
//        header.backgroundColor = UIColor.randomColor()
        return header
    }
}
