creators
addUrlInputField

	| fieldHeight |
	fieldHeight := self options defaultFont pointSize + (5 * self options defaultInputFieldMargins).
	self urlInputField: (WCURLInputBar new
		position: self position + ((self height * 0.04) @ ((self height * 0.04) + 14));
		crAction: [	self urlInputField hasUnacceptedEdits: false.
					self startCrawling];
		yourself).
	self addMorphFront: self urlInputField.
	Transcript show: 'pointsize: ', self options defaultFont pointSize, ' inputmarginsP: ' , self options defaultInputFieldMargins,  ' got field height: ', fieldHeight;cr.
	self urlInputField extent: (self width * 0.8) @ fieldHeight.
	Transcript show: 'now urlfieldheight: ', self urlInputField height;cr.