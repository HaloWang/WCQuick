# WCQuick

Before use WCQuick

	let label = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
	label.text = "Text"
	label.textColor = UIColor.redColor()
	view.addSubview(label)
	
After use WCQuick

	let label = UILabel()
			.superView(view)
			.text("Text")
			.textColor(UIColor.redColor())