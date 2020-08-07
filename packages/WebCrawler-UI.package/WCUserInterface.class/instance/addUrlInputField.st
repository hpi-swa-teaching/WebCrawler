creators
addUrlInputField

	self urlInputField: (WCURLInputBar new 
		initialize: [
			self urlInputField hasUnacceptedEdits: false.
			self startCrawling]).
	self addMorphFront: self urlInputField.
	self urlInputField position: self position + self defaultInputFieldPosition