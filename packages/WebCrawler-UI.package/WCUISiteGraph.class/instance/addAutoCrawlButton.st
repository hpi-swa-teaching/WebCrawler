creators
addAutoCrawlButton
	
	self autoCrawlButton: (WCUIButton new initialize: 'AutoCrawl' 
		target: self autoCrawlButtonTarget).
	self addMorphFront: self autoCrawlButton.
	self autoCrawlButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self autoCrawlButton extent y + self buttonPadding))