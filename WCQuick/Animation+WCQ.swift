//
//  Animation+WCQ.swift
//  SuperGina
//
//  Created by 王策 on 15/6/17.
//  Copyright (c) 2015年 Anve. All rights reserved.
//

import UIKit

public func WCAnimationWithDuration(duration:NSTimeInterval, #options: UIViewAnimationOptions, #animations: () -> Void, #completion: ((Bool) -> Void)?) {
	UIView.animateWithDuration(duration, delay: 0, options: options, animations: animations, completion: completion)
}
