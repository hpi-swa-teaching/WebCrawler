creators
addRegexButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self regexButton: (SimpleButtonMorph new
		position: self position + ((self width * 0.86) @ (self height * 0.14)); 
		target: [
			Transcript show: 'regex button clicked! content: ', self regexInputField contents;cr.
			self searchRegex];
		actionSelector: #value;
		label: 'Search' font: self defaultFont;
		extent: 80 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self regexButton.