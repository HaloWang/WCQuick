//
//  APPInfo+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/30.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import Foundation

public var ApplicationBuildVersion : String {
	return NSBundle.mainBundle().infoDictionary!["CFBundleVersion"] as! String
}

public var ApplicationVersion : String {
	return NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"] as! String
}
