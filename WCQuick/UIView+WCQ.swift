//
//  UIView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit
import WCLayout

public extension UIView {
	
	/**
	设置 view.superView
	
	:param: superView 父视图
	
	:returns: self
	*/
	public func superView(superView : UIView) -> Self {
		superView.addSubview(self)
		return self
	}
	
	public func userInteractionEnabled(userInteractionEnabled : Bool) -> Self {
		self.userInteractionEnabled = userInteractionEnabled
		return self
	}
	
	public func backgroundColor(backgroundColor : UIColor) -> Self {
		self.backgroundColor = backgroundColor
		return self
	}
	
	public func backgroundColorWhite() -> Self {
		self.backgroundColor = UIColor.whiteColor()
		return self
	}
	
	public func cornerRadius(radius : CGFloat) -> Self {
		layer.cornerRadius = radius
		layer.masksToBounds = true
		return self
	}
	
	public func circle() -> Self {
		return cornerRadius(width/2.f)
	}
	
	/**
	设置圆角
	
	:param: radius      圆角半径
	:param: borderWidth 描边宽度
	:param: borderColor 描边颜色
	
	:returns: self
	*/
	public func cornerRadius(radius : CGFloat, borderWidth : CGFloat, borderColor : UIColor) -> Self {
		layer.cornerRadius = radius
		layer.masksToBounds = true
		layer.borderWidth = borderWidth
		layer.borderColor = borderColor.CGColor
		return self
	}
	
	public func circleWithBorderWidth(borderWidth : CGFloat, borderColor : UIColor) -> Self {
		return cornerRadius(width/2.f, borderWidth: borderWidth, borderColor: borderColor)
	}
	
	public func contentMode(contentMode : UIViewContentMode) -> Self {
		self.contentMode = contentMode
		return self
	}
	
	public func contentModeCenter() -> Self {
		return contentMode(.Center)
	}
	
	public func alpha(alpha: CGFloat) -> Self {
		self.alpha = alpha
		return self
	}
	
	public func frame(frame : CGRect) -> Self {
		self.frame = frame
		return self
	}
	
	/// 返回某个 UIView 相对于当前屏幕的 rect
	public var relativeFrameToWindow: CGRect {
		var screen_X: CGFloat = 0
		var screen_Y: CGFloat = 0
		var tempView = self
		while !tempView.isKindOfClass(UIWindow) {
			screen_X += tempView.left
			screen_Y += tempView.top
			tempView = tempView.superview!
			if tempView.isKindOfClass(UIScrollView) {
				screen_X -= (tempView as! UIScrollView).contentOffset.x
				screen_Y -= (tempView as! UIScrollView).contentOffset.y
			}
		}
		return CGRect(x: screen_X, y: screen_Y, width: width, height: height)
	}
	
	public var relativeBottomToWindow: CGFloat {
		return relativeFrameToWindow.chainBottom
	}
	
	public func addTopLine(#height:CGFloat, color:UIColor) -> Self {
		return addTopLine(width: width, height: height, color: color)
	}
	
	public func addTopLine(#width: CGFloat, height:CGFloat, color:UIColor) -> Self {
		UIView().superView(self)
			.frame(CGRect(x: 0, y: height, width: width, height: height))
			.backgroundColor(color)
		return self
	}
	
	public func addTopLine() -> Self{
		return addTopLine(height: 0.5, color: WCSystemSeparatorColor)
	}
	
	public func addBottomLine(#height:CGFloat, color:UIColor) -> Self {
		return addBottomLine(width: width, height: height, color: color)
	}
	
	public func addBottomLine(#width: CGFloat, height:CGFloat, color:UIColor) -> Self {
		UIView().superView(self)
			.frame(CGRect(x: 0, y: self.height - height, width: width, height: height))
			.backgroundColor(color)
		return self
	}
	
	public func addBottomLine() -> Self{
		return addBottomLine(height: 0.5, color: WCSystemSeparatorColor)
	}
}
