initialize-release
initialize

	super initialize.
	self setLabel: 'WebCrawler - Vernetzungsgraph'.
	self setWindowColor: Color darkGray.
	self options: WCUIOptions new.
	self options setDarkMode.
		
	
	self plugin: WCUISiteGraphPlugin new.
	self plugin extent: 600@700.
	self plugin scroller extent: self plugin extent.
	self addMorphFront: self plugin.
	self plugin position: self position + 50 asPoint.
	self openInWorld.
	self addAutoCrawlButton.
	self addAnimationButton.
	self extent: (800@800)
	
	