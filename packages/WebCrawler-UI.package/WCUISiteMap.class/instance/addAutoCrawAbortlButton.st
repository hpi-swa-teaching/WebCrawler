initialize-release
addAutoCrawAbortlButton

	self abortButton: (WCUIButton new initialize: 'Abort AutoCrawl' 
		target: [self crawler abortAutoCrawling]).
	self abortButton position: self position + self lastButtonStartPosition.
	self addMorphFront: self abortButton.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self abortButton extent y + self buttonPadding))
	