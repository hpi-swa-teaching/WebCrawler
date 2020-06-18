creators
addSecondDomainButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self secondDomainButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.69) @ (self height * 0.24)); 
		target: [
			Transcript show: '2nd Domain button clicked!'; cr. 
			self listMorph updateList: (OrderedCollection newFrom: (self crawler storage secondLevelDomains)).
			Transcript show: (self crawler storage secondLevelDomains)];
		actionSelector: #value;
		label: 'Get Second Domain' font: self options smallerDefaultFont;
		extent: 180 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self secondDomainButton.