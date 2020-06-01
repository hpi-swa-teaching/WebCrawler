initialization
initialize

	super initialize.
	self scroller color: (Color white alpha: 0.0).
	self color: (Color white alpha: 0.0).
	self scroller position: self position.
	self dynamicResize: false.
	
	self options: WCUIOptions new.
	self colorIndex: 0.
	self linkColors: (OrderedCollection newFrom: {self options color2 . self options color3}).
	self links: OrderedCollection new