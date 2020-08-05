creators
addAutoCrawAbortlButton

	| buttonHeight |
	buttonHeight := 60.
	self abortButton: (PluggableButtonMorph new
		position: (self plugin position x + self plugin extent x + 30) @ (self plugin position y + (2 * self button extent y) + 60); 
		target: [
			Transcript show: 'abort button clicked'.
			self crawler process terminate];
		actionSelector: #value;
		label: 'Abort AutoCrawl' font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: buttonHeight / 5;
		openInWorld;
		yourself).
	
	self abortButton extent: self abortButton extent x @ buttonHeight.
	self addMorphFront: self abortButton