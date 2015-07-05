//
//  UIScrollView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UIScrollView {
	
	var offsetX : CGFloat {
		get {
			return contentOffset.x
		}
		set {
			contentOffset.x = newValue
		}
	}
	
	var offsetY : CGFloat {
		get {
			return contentOffset.y
		}
		set {
			contentOffset.y = newValue
		}
	}
	
	var insetTop : CGFloat {
		get {
			return contentInset.top
		}
		set {
			contentInset.top = newValue
			scrollIndicatorInsets.top = newValue
		}
	}
	
	var insetBottom : CGFloat {
		get {
			return contentInset.bottom
		}
		set {
			contentInset.bottom = newValue
			scrollIndicatorInsets.bottom = newValue
		}
	}
	
	func insetBottom(bottom : CGFloat) -> Self {
		insetBottom = bottom
		scrollIndicatorInsets.bottom = bottom
		return self
	}
	
	func offsetX(offsetX:CGFloat) -> Self {
		self.offsetX = offsetX
		return self
	}
	
	func offsetY(offsetY : CGFloat) -> Self {
		self.offsetY = offsetY
		return self
	}
	
	func insetTop(top : CGFloat) -> Self {
		insetTop = top
		scrollIndicatorInsets.top = top
		return self
	}
	
	func bounces(bounces : Bool) -> Self {
		self.bounces = bounces
		return self
	}
	
	func contentSize(size : CGSize) -> Self {
		contentSize = size
		return self
	}
	
	func contentInset(contentInset : UIEdgeInsets) -> Self {
		self.contentInset = contentInset
		return self
	}
	
	func scrollIndicatorInsets(scrollIndicatorInsets : UIEdgeInsets) -> Self {
		self.scrollIndicatorInsets = scrollIndicatorInsets
		return self
	}
	
	func contentOffset(contentOffset : CGPoint) -> Self {
		self.contentOffset = contentOffset
		return self
	}
	
	func alwaysBounceVertical(alwaysBounceVertical : Bool) -> Self {
		self.alwaysBounceVertical = alwaysBounceVertical
		return self
	}
	
	func scrollEnabled(scrollEnabled : Bool) -> Self {
		self.scrollEnabled = scrollEnabled
		return self
	}
	
	func pagingEnabled(pagingEnabled : Bool) -> Self {
		self.pagingEnabled = pagingEnabled
		return self
	}
	
	func delegate(delegate : protocol<UIScrollViewDelegate>) -> Self {
		self.delegate = delegate
		return self
	}
	
	func showsVerticalScrollIndicator(showsVerticalScrollIndicator:Bool) -> Self {
		self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
		return self
	}
	
	func showsHorizontalScrollIndicator(showsHorizontalScrollIndicator: Bool) -> Self {
		self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
		return self
	}
	
}

