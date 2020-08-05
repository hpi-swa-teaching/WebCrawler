creators
addCrawlButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self crawlButton: (PluggableButtonMorph new
		position: self position + ((self width * 0.86) @ ((self height * 0.04) + 14)); 
		target: [self startCrawling];
		actionSelector: #value;
		label: 'Go!' font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: textFieldSize / 5;
		openInWorld;
		yourself).
	self crawlButton extent: self crawlButton extent x @ textFieldSize.
	self addMorphFront: self crawlButton