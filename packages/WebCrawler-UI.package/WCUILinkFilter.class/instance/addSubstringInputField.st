creators
addSubstringInputField

	self subStringInputField: (WCURLInputBar new
		position: self position + ((self height * 0.04) @ (self height * 0.04));
		crAction: [self searchSubstring];
		yourself).

	self subStringInputField setBalloonText: 'enter substring here'.
	self addMorphFront: self subStringInputField.
	self subStringInputField extent: (self width * 0.8) @ (self height * 0.075)