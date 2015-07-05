//
//  UISegmentedControl+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension UISegmentedControl {
	public func selectedSegmentIndex(selectedSegmentIndex:Int) -> Self {
		self.selectedSegmentIndex = selectedSegmentIndex
		return self
	}
}
