creators
addRegexInputField

	self regexInputField: (WCURLInputBar new
			initialize: [self searchRegex];
			updateBalloonText: 'enter regex here';extent: self defaultInputFieldSize;
			position: self position + self defaultRegexInputFieldPosition;
			yourself).
	self addMorphFront: self regexInputField