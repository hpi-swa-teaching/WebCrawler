creators
addCrawlButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self crawlButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.04)); 
		target: [self startCrawling];
		actionSelector: #value;
		label: 'Go!' font: self options defaultFont;
		extent: textFieldSize @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self crawlButton