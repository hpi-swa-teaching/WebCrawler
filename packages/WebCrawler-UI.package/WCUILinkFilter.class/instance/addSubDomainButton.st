creators
addSubDomainButton

	self subDomainButton: (WCUIButton new initialize: 'Filer Subdomains' 
		target: [self searchSubDomains] font: self smallerDefaultFont;
		extent: self defaultBiggerButtonExtent;
		position: self position + self defaultSubDomainPosition;
		yourself).
	self addMorphFront: self subDomainButton