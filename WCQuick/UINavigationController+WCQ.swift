//
//  UINavigationController+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UINavigationController {
	//  使用某纯色图片填充navigationBar
	//  去掉shadow
	//  将tintColor设置为白色
	//  讲titleColor设置为白色
	//  应该是国内很多应用需要的navigationBar样式了
	func barUsePureColorImage(image:UIImage?) -> Self {
		navigationBar.setBackgroundImage(image, forBarMetrics: UIBarMetrics.Default)
		navigationBar.shadowImage = UIImage()
		navigationBar.tintColor = UIColor.whiteColor()
		navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
		return self
	}
}
