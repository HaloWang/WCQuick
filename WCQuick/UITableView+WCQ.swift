//
//  UITableView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UITableView {
	/**
	同时设置 dataSource 和 delegate
	
	:param: dataSourceAndDelegate 同时遵守两个协议的 Object
	
	:returns: self ( For Chain Style )
	*/
	func dataSourceAndDelegate(dataSourceAndDelegate: protocol<UITableViewDataSource, UITableViewDelegate>? ) -> Self {
		delegate = dataSourceAndDelegate
		dataSource = dataSourceAndDelegate
		return self
	}
	
	func separatorColor(separatorColor:UIColor) -> Self {
		self.separatorColor = separatorColor
		return self
	}
	
	func separatorStyle(separatorStyle:UITableViewCellSeparatorStyle) -> Self {
		self.separatorStyle = separatorStyle
		return self
	}
	
	/**
	注册单元格
	
	:param: cellClass       类型
	:param: reuseIdentifier 重用标示
	
	:returns: self ( For Chain Style )
	*/
	func register(#cellClass: AnyClass, reuseIdentifier: String) -> Self {
		self.registerClass(cellClass, forCellReuseIdentifier: reuseIdentifier)
		return self
	}
	
	func rowHeight(rowHeight:CGFloat) -> Self {
		self.rowHeight = rowHeight
		return self
	}
}

