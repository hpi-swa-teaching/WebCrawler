initialize-release
initialize

	super initialize.
	self setLabel: 'WebCrawler'.
	self width: self defaultWindowWidth; 
		height: self defaultWindowHeight.
	
	self loading: false.
	
	self crawler: WCrawler new.
	self addUrlInputField.
	self addCrawlButton.
	self addFilterButton.
	self addSiteGraphButton.
	self addClearButton.
	self addSiteMapButton.
	self addListMorph.
	self openInWorld
	