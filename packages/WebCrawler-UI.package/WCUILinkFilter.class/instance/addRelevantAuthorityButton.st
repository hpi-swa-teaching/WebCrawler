creators
addRelevantAuthorityButton

	self relevantAuthorityButton: (WCUIButton new initialize: 'Get relevant Authority' 
		target: [self searchRelevantAuthority] font: self smallerDefaultFont;
		extent: self defaultBiggerButtonExtent;
		position: self position + self defaultRelevantAuthorityPosition;
		yourself).
	self addMorphFront: self relevantAuthorityButton