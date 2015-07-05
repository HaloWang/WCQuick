//
//  String+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import Foundation

extension String {
	var url : NSURL {
		return NSURL(string: self)!
	}
	
	func toUInt() -> UInt? {
		if contains(self, "-") {
			return nil
		}
		return self.withCString { cptr -> UInt? in
			var endPtr : UnsafeMutablePointer<Int8> = nil
			errno = 0
			let result = strtoul(cptr, &endPtr, 10)
			if errno != 0 || endPtr.memory != 0 {
				return nil
			} else {
				return result
			}
		}
	}
	
}