creators
addRegexInputField

	self regexInputField: (WCURLInputBar new
		position: self position + ((self height * 0.04) @ (self height * 0.14));
		crAction: [self searchRegex];
		yourself).
		
	self regexInputField setBalloonText: 'enter regex here'.	
	self addMorphFront: self regexInputField.
	self regexInputField extent: (self width * 0.8) @ (self height * 0.075)