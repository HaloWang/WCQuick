//
//  UIImage+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

/// 从 bundle 中按照文件名取图片
func PNGNamed(name : String) -> UIImage {
	
	if let imageResourceString = NSBundle.mainBundle().pathForResource(name, ofType: "png"), image = UIImage(contentsOfFile: imageResourceString) {
		return image
	} else {
		println("WCQuick can not find image named \"\(name).png\" in mainBundle")
		return UIImage()
	}
	
}

extension UIImage {
	
	var pngData : NSData {
		return UIImagePNGRepresentation(self)
	}
	
	var width : CGFloat {
		return size.width
	}
	
	var height : CGFloat {
		return size.height
	}
	
	class func pngImageWithColor(color:UIColor, size: CGSize) -> UIImage {
		UIGraphicsBeginImageContext(size)
		let context = UIGraphicsGetCurrentContext()
		CGContextSetFillColorWithColor(context, color.CGColor)
		CGContextFillRect(context, CGRect(x: 0, y: 0, width: size.width, height: size.height))
		let pureColorImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return pureColorImage
	}
	
	func scaleToScale(scale:CGFloat) -> UIImage {
		UIGraphicsBeginImageContext(size.scaleTo(scale))
		drawInRect(CGRect(origin: CGPointZero, size: size.scaleTo(scale)))
		let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return scaledImage
	}
	
	func scaleToPNGDataLenght(#kb:Int) -> UIImage {
		
		var scaleSize = sqrt(CGFloat(pngData.length)/CGFloat(kb * 1024)) * 0.9
		if pngData.length > kb * 1024 {
			if scaleToScale(scaleSize).pngData.length > kb * 1024 {
				scaleSize = sqrt(CGFloat(scaleToScale(scaleSize).pngData.length/kb * 1024))
				if scaleToScale(scaleSize).pngData.length > kb * 1024 {
					scaleSize = sqrt(CGFloat(scaleToScale(scaleSize).pngData.length/kb * 1024))
					
				}
			}
		}
		return scaleToScale(scaleSize)
	}
	
	func scale(scale:CGFloat, baseKBLimit:Int) -> CGFloat {
		if pngData.length > baseKBLimit * 1024 {
			if scaleToScale(scale).pngData.length > baseKBLimit * 1024 {
				//				let a = scale(CGFloat(0.99), baseKBLimit: baseKBLimit)
				//				let b = scale(CGFloat(0.99), baseKBLimit: 1)
				return 1
				//				return a
			} else {
				return 1
			}
		} else {
			return scale
		}
	}
}
