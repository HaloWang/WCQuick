//
//  CGSize+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension CGSize {
	public func scaleTo(scale:CGFloat) -> CGSize {
		return CGSize(width: width*scale, height: height*scale)
	}
}
