creators
addAutoCrawAbortButton

	self abortButton: (WCUIButton new initialize: 'Abort Autocrawl' 
		target: [self crawler abortAutoCrawling]).
	self addMorphFront: self abortButton.
	self abortButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self abortButton extent y + self buttonPadding))