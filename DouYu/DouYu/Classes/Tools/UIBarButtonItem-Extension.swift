//
//  UIBarButtonItem-Extension.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/10.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit
extension UIBarButtonItem
{
    convenience init(imgName : String , selectedImgName : String = ""   , size : CGSize = CGSize.zero)
    {
        let btn = UIButton()
        btn.setImage(UIImage(named: imgName), for: .normal)
        
        if selectedImgName != "" {
             btn.setImage(UIImage(named: selectedImgName), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        }
        else
        {
              btn.frame = CGRect(origin: CGPoint.zero, size: size)
        } 
      
        
        self.init(customView: btn)
    }
}

