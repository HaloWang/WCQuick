//
//  UIImageView+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public extension UIImageView {
	public func image(image : UIImage?) -> Self {
		self.image = image
		return self
	}
	
	public func image(named name: String) -> Self {
		return image(UIImage(named: name))
	}
}
