//
//  UITextField+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UITextField {
	
	var displaySize: CGSize {
		return (self.text as NSString).boundingRectWithSize(CGSize(width: Double(MAXFLOAT), height: Double(MAXFLOAT)), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil).size
	}
	
	func text(text : String) -> Self {
		self.text = text
		return self
	}
	
	func placeholder(placeholder : String) -> Self{
		self.placeholder = placeholder
		return self
	}
	
	func leftWidth(leftWidth : CGFloat) -> Self {
		leftView = UIView(frame: CGRect(x: 0, y: 0, width: leftWidth, height: 5))
		leftViewMode = UITextFieldViewMode.Always
		return self
	}
	
	func textAlignment(textAlignment : NSTextAlignment) -> Self {
		self.textAlignment = textAlignment
		return self
	}
	
	func keyboardType(keyboardType : UIKeyboardType) -> Self {
		self.keyboardType = keyboardType
		return self
	}
	
	func secureTextEntry(secureTextEntry : Bool) -> Self {
		self.secureTextEntry = secureTextEntry
		return self
	}
	
	func font(#systemFontOfSize:CGFloat) -> Self {
		return font(UIFont.systemFontOfSize(systemFontOfSize))
	}
	
	func font(font : UIFont) -> Self {
		self.font = font
		return self
	}
	
	func fontSize(fontSize : CGFloat) -> Self {
		font = UIFont(name: font.fontName, size: fontSize)
		return self
	}
	
}
