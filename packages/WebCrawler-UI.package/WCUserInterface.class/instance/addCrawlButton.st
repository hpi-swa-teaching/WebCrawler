creators
addCrawlButton

	self crawlButton: (WCUIButton new initialize: 'Go!' 
		target: [self startCrawling]).
	self addMorphFront: self crawlButton.
	self crawlButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self crawlButton extent y + self buttonPadding))