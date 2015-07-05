//
//  UIButton+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UIButton {
	/// 返回一个 ButtonType 为 Custom 的 UIButton
	class func custom() -> UIButton {
		return UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
	}
	
	/**
	设定 Target-Action. 触发条件为：TouchUpInside（按下，并在按钮内离开手指）
	
	:param: target         target
	:param: upInsideAction action
	
	:returns: self
	*/
	func target(target : AnyObject?, upInsideAction : Selector) -> Self{
		addTarget(target, action : upInsideAction, forControlEvents:.TouchUpInside)
		return self
	}
	
	/**
	设置 Normal 状态下，按钮的背景图片
	
	:param: image 图片
	
	:returns: self
	*/
	func backgroundImageForNormal(image : UIImage?) -> Self {
		setBackgroundImage(image, forState: .Normal)
		return self
	}
	
	func imageForNormal(image : UIImage?) -> Self {
		setImage(image, forState: .Normal)
		return self
	}
	
	func title(title : String) -> Self {
		setTitle(title, forState: .Normal)
		return self
	}
	
	func titleColor(titleColor : UIColor) -> Self {
		setTitleColor(titleColor, forState: .Normal)
		return self
	}
	
	func enabled(enabled: Bool) -> Self {
		self.enabled = enabled
		return self
	}
	/**
	同时设定 title 和 titleColor
	
	:param: title      标题文本
	:param: titleColor 标题文本颜色
	
	:returns: self
	*/
	func title(title: String, titleColor: UIColor) -> Self {
		return self.title(title).titleColor(titleColor)
	}
	
	func titleFont(font:UIFont) -> Self {
		titleLabel?.font(font)
		return self
	}
}
