creators
addSubstringButton

	| textFieldSize | 
	textFieldSize := self subStringInputField height.

	self subStringButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.04)); 
		target: [
			Transcript show: 'substring button clicked! content: ', self subStringInputField contents;cr.
			self searchSubstring];
		actionSelector: #value;
		label: 'Search' font: self options defaultFont;
		extent: 80 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self subStringButton.