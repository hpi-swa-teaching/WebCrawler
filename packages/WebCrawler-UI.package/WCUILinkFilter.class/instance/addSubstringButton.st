creators
addSubstringButton

	| textFieldSize | 
	textFieldSize := self substringInputField height.

	self substringButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.04)); 
		target: [
			Transcript show: 'substring button clicked! content: ', self substringInputField contents;cr.
			self links: (self crawler searchLinkSubstring: (self substringInputField contents)).
			Transcript show: (self links)];
		actionSelector: #value;
		label: 'Search' font: self options defaultFont;
		extent: 80 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self substringButton.