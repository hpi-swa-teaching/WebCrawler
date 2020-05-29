creators
addRegexButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self regexButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.14)); 
		target: [
			Transcript show: 'regex button clicked! content: ', self regexInputField contents;cr.
			self links: (self crawler searchForRegex: (self regexInputField contents)).
			self listMorph updateList: (self links)];
		actionSelector: #value;
		label: 'Search' font: self options defaultFont;
		extent: 80 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self regexButton.