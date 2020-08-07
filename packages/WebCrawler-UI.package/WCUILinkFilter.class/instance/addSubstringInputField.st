creators
addSubstringInputField

	self subStringInputField: (WCURLInputBar new
			initialize: [self searchSubstring];
			position: self position + self defaultSubstringInputFieldPosition;
			updateBalloonText: 'enter substring here';
			yourself).
	self addMorphFront: self subStringInputField.
	self subStringInputField extent: self defaultInputFieldSize