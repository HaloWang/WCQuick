//
//  UIColor+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

let WCWhiteColor = UIColor.whiteColor()

let WCBlackColor = UIColor.blackColor()

let WCGrayColor = UIColor.darkGrayColor()

/// 系统分割线颜色
var WCSystemSeparatorColor : UIColor {
	return UIColor(red: 200/255, green: 199/255, blue: 204/255, alpha: 1)
}

func RGB(red:CGFloat, green:CGFloat, blue:CGFloat) -> UIColor {
	return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
}

func RGBA(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
	return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
}

extension UIColor {
	
	/**
	使用 hex 色值初始化 UIColor
	
	:param: hexString 结构为 "#123456" 的字符串
	*/
	convenience init(hexString: String) {
		var red :  CGFloat = 0.0
		var green: CGFloat = 0.0
		var blue : CGFloat = 0.0
		var alpha: CGFloat = 1.0
		
		if hexString.hasPrefix("#") {
			let index   = advance(hexString.startIndex, 1)
			let hex     = hexString.substringFromIndex(index)
			let scanner = NSScanner(string: hex)
			var hexValue: CUnsignedLongLong = 0
			if scanner.scanHexLongLong(&hexValue) {
				switch (count(hex)) {
				case 3:
					red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
					green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
					blue  = CGFloat(hexValue & 0x00F)              / 15.0
				case 4:
					red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
					green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
					blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
					alpha = CGFloat(hexValue & 0x000F)             / 15.0
				case 6:
					red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
					green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
					blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
				case 8:
					red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
					green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
					blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
					alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
				default:
					print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
				}
			} else {
				println("Scan hex error")
			}
		} else {
			print("Invalid RGB string, missing '#' as prefix")
		}
		self.init(red:red, green:green, blue:blue, alpha:alpha)
	}
}
