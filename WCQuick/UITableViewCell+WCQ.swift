//
//  UITableViewCell+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UITableViewCell {
	func selectionStyle(selectionStyle:UITableViewCellSelectionStyle) -> Self {
		self.selectionStyle = selectionStyle
		return self
	}
}
