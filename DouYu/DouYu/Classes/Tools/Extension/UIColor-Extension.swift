//
//  UIColor-Extension.swift
//  DouYu
//
//  Created by 管章鹏 on 2017/10/10.
//  Copyright © 2017年 管章鹏. All rights reserved.
//

import UIKit
extension UIColor
{
    class func randomColor() -> UIColor
    {
        return UIColor(red: CGFloat(arc4random_uniform(256))/255.0, green: CGFloat(arc4random_uniform(256))/255.0, blue: CGFloat(arc4random_uniform(256))/255.0, alpha: 1.0)
    }
}
