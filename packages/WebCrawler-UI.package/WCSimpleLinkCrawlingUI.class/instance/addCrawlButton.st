creators
addCrawlButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self crawlButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.04)); 
		target: [
			Transcript show: 'pressed da button! content: ', self urlInputField contents;cr.
			self crawler crawl: self urlInputField contents asString.
			Transcript show: self crawler links;cr];
		actionSelector: #value;
		label: 'Go!' font: self options defaultFont;
		extent: textFieldSize @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self crawlButton