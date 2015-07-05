//
//  UIView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit
import WCLayout

extension UIView {
	
	/**
	设置 view.superView
	
	:param: superView 父视图
	
	:returns: self
	*/
	func superView(superView : UIView) -> Self {
		superView.addSubview(self)
		return self
	}
	
	func userInteractionEnabled(userInteractionEnabled : Bool) -> Self {
		self.userInteractionEnabled = userInteractionEnabled
		return self
	}
	
	func backgroundColor(backgroundColor : UIColor) -> Self {
		self.backgroundColor = backgroundColor
		return self
	}
	
	func backgroundColorWhite() -> Self {
		self.backgroundColor = UIColor.whiteColor()
		return self
	}
	
	func cornerRadius(radius : CGFloat) -> Self {
		layer.cornerRadius = radius
		layer.masksToBounds = true
		return self
	}
	
	func circle() -> Self {
		return cornerRadius(width/2.f)
	}
	
	/**
	设置圆角
	
	:param: radius      圆角半径
	:param: borderWidth 描边宽度
	:param: borderColor 描边颜色
	
	:returns: self
	*/
	func cornerRadius(radius : CGFloat, borderWidth : CGFloat, borderColor : UIColor) -> Self {
		layer.cornerRadius = radius
		layer.masksToBounds = true
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor.CGColor
		return self
	}
	
	func circleWithBorderWidth(borderWidth : CGFloat, borderColor : UIColor) -> Self {
		return cornerRadius(width/2.f, borderWidth: borderWidth, borderColor: borderColor)
	}
	
	func contentMode(contentMode : UIViewContentMode) -> Self {
		self.contentMode = contentMode
		return self
	}
	
	func contentModeCenter() -> Self {
		return contentMode(.Center)
	}
	
	func alpha(alpha: CGFloat) -> Self {
		self.alpha = alpha
		return self
	}
	
	func frame(frame : CGRect) -> Self {
		self.frame = frame
		return self
	}
	
	/// 返回某个 UIView 相对于当前屏幕的 rect
	var relativeFrameToWindow: CGRect {
		var screen_X: CGFloat = 0
		var screen_Y: CGFloat = 0
		var tempView = self
		while !tempView.isKindOfClass(UIWindow) {
			screen_X += tempView.x
			screen_Y += tempView.y
			tempView = tempView.superview!
			if tempView.isKindOfClass(UIScrollView) {
				screen_X -= (tempView as! UIScrollView).contentOffset.x
				screen_Y -= (tempView as! UIScrollView).contentOffset.y
			}
		}
		return CGRect(x: screen_X, y: screen_Y, width: width, height: height)
	}
	
	var relativeBottomToWindow: CGFloat {
		return relativeFrameToWindow.chainBottom
	}
	
	func addTopLine(#height:CGFloat, color:UIColor) -> Self {
		return addTopLine(width: width, height: height, color: color)
	}
	
	func addTopLine(#width: CGFloat, height:CGFloat, color:UIColor) -> Self {
		UIView().superView(self)
			.frame(CGRect(x: 0, y: height, width: width, height: height))
			.backgroundColor(color)
		return self
	}
	
	func addTopLine() -> Self{
		return addTopLine(height: 0.5, color: WCSystemSeparatorColor)
	}
	
	func addBottomLine(#height:CGFloat, color:UIColor) -> Self {
		return addBottomLine(width: width, height: height, color: color)
	}
	
	func addBottomLine(#width: CGFloat, height:CGFloat, color:UIColor) -> Self {
		UIView().superView(self)
			.frame(CGRect(x: 0, y: self.height - height, width: width, height: height))
			.backgroundColor(color)
		return self
	}
	
	func addBottomLine() -> Self{
		return addBottomLine(height: 0.5, color: WCSystemSeparatorColor)
	}
}
