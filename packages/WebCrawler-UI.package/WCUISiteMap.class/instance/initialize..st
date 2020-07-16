initialize-release
initialize: aParentUrl

	super initialize.
	self setLabel: 'WebCrawler - SiteMap'.
	self setWindowColor: Color darkGray.
	self options: WCUIOptions new.
	self options setDarkMode.
		
	
	self plugin: (WCUISiteMapPlugin new initialize: aParentUrl).
	self plugin extent: 800@700.
	self plugin scroller extent: self plugin extent.
	self addMorphFront: self plugin.
	self plugin position: self position + 50 asPoint.
	self addAutoCrawAbortlButton.
	self openInWorld.
	self extent: (1070@800)