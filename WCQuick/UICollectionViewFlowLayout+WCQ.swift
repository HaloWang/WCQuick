//
//  UICollectionViewFlowLayout+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UICollectionViewFlowLayout {
	func scrollDirection(scrollDirection:UICollectionViewScrollDirection) -> Self {
		self.scrollDirection = scrollDirection
		return self
	}
	
	func itemSize(itemSize:CGSize) -> Self {
		self.itemSize = itemSize
		return self
	}
	
	func itemSize(#width:CGFloat, height:CGFloat) -> Self {
		return self.itemSize(CGSize(width: width, height: height))
	}
	
	func minimumInteritemSpacing(minimumInteritemSpacing:CGFloat) -> Self {
		self.minimumInteritemSpacing = minimumInteritemSpacing
		return self
	}
	
	func minimumLineSpacing(minimumLineSpacing:CGFloat) -> Self {
		self.minimumLineSpacing = minimumLineSpacing
		return self
	}
}
