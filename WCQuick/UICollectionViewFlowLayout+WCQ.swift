//
//  UICollectionViewFlowLayout+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension UICollectionViewFlowLayout {
	public func scrollDirection(scrollDirection:UICollectionViewScrollDirection) -> Self {
		self.scrollDirection = scrollDirection
		return self
	}
	
	public func itemSize(itemSize:CGSize) -> Self {
		self.itemSize = itemSize
		return self
	}
	
	public func itemSize(#width:CGFloat, height:CGFloat) -> Self {
		return self.itemSize(CGSize(width: width, height: height))
	}
	
	public func minimumInteritemSpacing(minimumInteritemSpacing:CGFloat) -> Self {
		self.minimumInteritemSpacing = minimumInteritemSpacing
		return self
	}
	
	public func minimumLineSpacing(minimumLineSpacing:CGFloat) -> Self {
		self.minimumLineSpacing = minimumLineSpacing
		return self
	}
}
