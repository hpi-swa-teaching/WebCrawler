creators
addOutgoingDomainsButton

	self outgoingDomainsButton: (WCUIButton new initialize: 'Filter Outgoing Domains' 
		target: [self searchOutgoing] font: self smallerDefaultFont;
		extent: self defaultBiggerButtonExtent;
		position: self position + self defaultOutgoingButtonPosition;
		yourself).
	self addMorphFront: self outgoingDomainsButton