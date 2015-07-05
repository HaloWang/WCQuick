//
//  String+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import Foundation

public extension String {
	public var url : NSURL {
		return NSURL(string: self)!
	}
}