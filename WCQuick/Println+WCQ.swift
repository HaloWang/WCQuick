//
//  WCQuickLog.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import Foundation

/**
输出

:param: value 内容
*/
public func cc<T>(value: T) {
	println(value)
}

public func ccNSArray(value:[AnyObject]) {
	cc(value as NSArray)
}

public func ccNSDictionary(value:WCDic) {
	cc(value as NSDictionary)
}