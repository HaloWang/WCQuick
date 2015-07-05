//
//  CGFloat+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension CGFloat {
	
	public var size : CGSize {
		return CGSize(width: self, height: self)
	}
	
	public var origin : CGPoint {
		return CGPoint(x: self, y: self)
	}
	
	/// 很多时候需要设置 ×2 的属性
	public var double : CGFloat {
		return self * 2
	}
}
