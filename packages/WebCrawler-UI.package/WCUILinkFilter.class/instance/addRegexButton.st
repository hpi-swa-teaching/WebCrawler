creators
addRegexButton
	
	self regexButton: (WCUIButton new initialize: 'Search' 
		target: [self searchRegex];
		extent: self defaultButtonExtent;
		position: self position + self defaultRegexButtonPosition;
		yourself).
	self addMorphFront: self regexButton