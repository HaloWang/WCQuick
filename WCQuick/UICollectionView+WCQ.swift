//
//  UICollectionView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension UICollectionView {
	public func dataSource(dataSource:UICollectionViewDataSource) -> Self {
		self.dataSource = dataSource
		return self
	}
	
	public func register(#cellClass: AnyClass, reuseIdentifier: String) -> Self {
		self.registerClass(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
		return self
	}
}
