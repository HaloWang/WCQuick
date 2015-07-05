
import UIKit

extension UIViewController {
	
	/**
	直接设置 self.view.backgroundColor
	
	:param: backgroundColor 背景颜色
	
	:returns: self
	*/
	func backgroundColor(backgroundColor : UIColor) -> Self{
		view.backgroundColor(backgroundColor)
		return self
	}
	/**
	在 self.view 上添加 UIView
	
	:param: viewsSubview subView
	
	:returns: self
	*/
	func addSubview(viewsSubview : UIView) -> Self{
		view.addSubview(viewsSubview)
		return self
	}
	
	func title(title : String) -> Self {
		self.title = title
		return self
	}
	
	func unableAutoS() -> Self {
		return extendedLayoutIncludesOpaqueBars(false).automaticallyAdjustsScrollViewInsets(false)
	}
	
	//  设置成true的话，表示即便UIViewController的navigationBar是不透明的，也会讲view上的scrollView的frame拓展到navigationBar下面。这样就使scrollView.frame在拥有透明或非透明的navigationBar中表现一致了。
	//  不过，这也许不是一个好办法。
	func extendedLayoutIncludesOpaqueBars(extendedLayoutIncludesOpaqueBars : Bool) -> Self {
		self.extendedLayoutIncludesOpaqueBars = extendedLayoutIncludesOpaqueBars
		return self
	}
	
	func automaticallyAdjustsScrollViewInsets(automaticallyAdjustsScrollViewInsets : Bool) -> Self {
		self.automaticallyAdjustsScrollViewInsets = automaticallyAdjustsScrollViewInsets
		return self
	}
	
	/**
	让自己的navigationController模态出去，多用于模态出来的，且带有navigationController的viewController
	
	:param: flag       是否有动画效果？
	:param: completion 完成回调
	*/
	func dismiss(flag: Bool, completion: (() -> Void)?) {
		if navigationController != nil {
			navigationController!.dismissViewControllerAnimated(flag, completion: completion)
		} else {
			dismissViewControllerAnimated(flag, completion: completion)
		}
	}
	
	func push(viewController: UIViewController, animated: Bool) {
		navigationController?.pushViewController(viewController, animated: animated)
	}
	
}
