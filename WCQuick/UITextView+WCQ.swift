//
//  UITextView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

extension UITextView {
	
	func returnKeyType(returnKeyType : UIReturnKeyType) -> Self {
		self.returnKeyType = returnKeyType
		return self
	}
	
	func font(font : UIFont) -> Self {
		self.font = font
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
	
	func textColor(color:UIColor) -> Self {
		self.textColor = color
		return self
	}
	
	func text(text : String?) -> Self {
		self.text = text
		return self
	}
	
	func editable(editable : Bool) -> Self {
		self.editable = editable
		return self
	}
	
	func selectable(selectable : Bool) -> Self {
		self.selectable = selectable
		return self
	}
	
	func textContainerInset(textContainerInset : UIEdgeInsets) -> Self {
		self.textContainerInset = textContainerInset
		return self
	}
}
