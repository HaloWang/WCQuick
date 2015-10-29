# WCQuick

## Update 

This repository is useless now.
See my new framework [HaloWang/Halo](https://github.com/HaloWang/Halo)

## Usage
#####Before use WCQuick

	import UIKit

	class ViewController: UIViewController {
	
		let label = UILabel()

		override func viewDidLoad() {
			super.viewDidLoad()
		
			label.frame = CGRect(x: 0, y: 0, width: 320, height: 20)
			label.text = "Text"
			label.textColor = UIColor.redColor()
			view.addSubview(label)
		}
	}


	
#####After use WCQuick

	import UIKit
	import WCQuick

	class ViewController: UIViewController {
	
		let label = UILabel()

		override func viewDidLoad() {
			super.viewDidLoad()
			
			label.superView(view)
				.frame(CGRect(x: 0, y: 0, width: 320, height: 20))
				.text("Text")
				.textColor(UIColor.redColor())
		}
	}

