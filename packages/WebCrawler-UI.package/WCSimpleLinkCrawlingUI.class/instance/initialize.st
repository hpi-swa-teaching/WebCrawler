initialize-release
initialize

	super initialize.
	self color: Color darkGray; 
		width: 600; 
		height: 600.
	
	self options: WCUIOptions new.
	self options setDarkMode.
	
	self addUrlInputField.
	self addCrawlButton.
	self crawler: WCrawler new
	