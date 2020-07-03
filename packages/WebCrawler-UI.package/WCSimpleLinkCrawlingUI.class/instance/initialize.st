initialize-release
initialize

	super initialize.
	self setLabel: 'WebCrawler'.
	self options: WCUIOptions new.
	self setWindowColor: self options color1; 
		width: self options defaultWindowWidth; 
		height: self options defaultWindowHeight.
	
	self loading: false.
	
	self crawler: WCrawler new.
	self addUrlInputField.
	self addCrawlButton.
	self addFilterButton.
	self addSiteGraphButton.
	self addClearButton.
	self addListMorph.
	self openInWorld
	