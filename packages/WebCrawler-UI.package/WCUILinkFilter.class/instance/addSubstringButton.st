creators
addSubstringButton

	self subStringButton: (WCUIButton new initialize: 'Search' 
		target: [self searchSubstring];
		extent: self defaultButtonExtent;
		position: self position + self defaultSubstringPosition;
		yourself).
	self addMorphFront: self subStringButton