creators
addAutoCrawAbortButton

	self abortButton: (WCUIButton new initialize: 'Abort Autocrawl' 
		target: [self crawler abortAutoCrawling]).
	self abortButton position: self lastButtonStartPosition.
	self addMorphFront: self abortButton.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self abortButton extent y + self buttonPadding))