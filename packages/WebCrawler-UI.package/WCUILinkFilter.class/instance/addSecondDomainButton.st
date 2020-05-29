creators
addSecondDomainButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self secondDomainButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.59) @ (self height * 0.24)); 
		target: [
			Transcript show: '2nd Domain button clicked!'; cr. 
			Transcript show: (self crawler secondLevelDomain)];
		actionSelector: #value;
		label: 'Get Second Domain' font: self options defaultFont;
		extent: 240 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self secondDomainButton.