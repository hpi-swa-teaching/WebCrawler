creators
addSubDomainButton

	| textFieldSize | 
	textFieldSize := self regexInputField height.

	self subDomainButton: (SimpleButtonMorph new
		position: self position + ((self width * 0.35) @ (self height * 0.24)); 
		target: [
			Transcript show: 'Subdomain button clicked!'; cr.
			self links: (self crawler storage searchSubDomains).
			self listMorph updateList: (self links)];
		actionSelector: #value;
		label: 'Filter Subdomains' font: self smallerDefaultFont;
		extent: 180 @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self subDomainButton.