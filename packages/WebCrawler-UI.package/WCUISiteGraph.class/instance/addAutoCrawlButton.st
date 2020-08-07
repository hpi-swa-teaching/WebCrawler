creators
addAutoCrawlButton
	
	self autoCrawlButton: (WCUIButton new initialize: 'AutoCrawl' 
		target: self autoCrawlButtonTarget).
	self addMorphFront: self autoCrawlButton.
	self autoCrawlButton position: self position + self lastButtonStartPosition.
	Transcript show: 'own pos: ', self position, ' lbsp: ', self lastButtonStartPosition;cr.
	Transcript show: 'now autocrawl button position: ', self autoCrawlButton position;cr.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self autoCrawlButton extent y + self buttonPadding))