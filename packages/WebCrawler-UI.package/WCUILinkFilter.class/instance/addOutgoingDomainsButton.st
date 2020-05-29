creators
addOutgoingDomainsButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self outgoingDomainsButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.01) @ (self height * 0.24)); 
		target: [
			Transcript show: 'outgoing Domains button clicked! ';cr.
			self links: (self crawler searchOutgoingDomains).
			self listMorph updateList: (self links)];
		actionSelector: #value;
		label: 'Filter Outgoing Domains' font: self options smallerDefaultFont;
		extent: 180 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self outgoingDomainsButton.