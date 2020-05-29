creators
addSubDomainButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self subDomainButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.20) @ (self height * 0.24)); 
		target: [
			Transcript show: 'Subdomain button clicked!'; cr.
			self links: (self crawler searchSubDomains).
			Transcript show: (self links)];
		actionSelector: #value;
		label: 'Get Subdomains' font: self options defaultFont;
		extent: 240 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self subDomainButton.