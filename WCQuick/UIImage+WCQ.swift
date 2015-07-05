//
//  UIImage+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

/// 从 bundle 中按照文件名取图片
public func PNGNamed(name : String) -> UIImage {
	
	if let imageResourceString = NSBundle.mainBundle().pathForResource(name, ofType: "png"), image = UIImage(contentsOfFile: imageResourceString) {
		return image
	} else {
		println("WCQuick can not find image named \"\(name).png\" in mainBundle")
		return UIImage()
	}
	
}

public extension UIImage {
	
	public var pngData : NSData {
		return UIImagePNGRepresentation(self)
	}
	
	public var width : CGFloat {
		return size.width
	}
	
	public var height : CGFloat {
		return size.height
	}
	
	class public func pngImageWithColor(color:UIColor, size: CGSize) -> UIImage {
		UIGraphicsBeginImageContext(size)
		let context = UIGraphicsGetCurrentContext()
		CGContextSetFillColorWithColor(context, color.CGColor)
		CGContextFillRect(context, CGRect(x: 0, y: 0, width: size.width, height: size.height))
		let pureColorImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return pureColorImage
	}
}
