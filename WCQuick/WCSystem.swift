
import UIKit

/// 当前系统版本
var WCCurrentSystemVersion : Float {
    return (UIDevice.currentDevice().systemVersion as NSString).floatValue
}

/// 当前系统版本是否大于 8.0，目前来看的话，应该是不需要担心必须兼容 iOS6 了吧
let WCMoreThan8 = WCCurrentSystemVersion >= 8.0

/// 设置状态栏颜色
func WCSetStatusBarStyle(style : UIStatusBarStyle, #animated: Bool) {
    UIApplication.sharedApplication().setStatusBarStyle(style, animated: animated)
}

//	返回当前 application 的 RootViewController
var ApplicationRootVC : UIViewController? {
	get {
		if	let appDelegate = UIApplication.sharedApplication().delegate,
			let window = appDelegate.window,
			let _window = window {
				return _window.rootViewController
		} else {
			return nil
		}
	}
	set(newValue) {
		if	let appDelegate = UIApplication.sharedApplication().delegate,
			let window = appDelegate.window,
			let _window = window {
				_window.rootViewController = newValue
		} else {
			println("WCQuick can not find appDelegate.window")
		}
	}
}
