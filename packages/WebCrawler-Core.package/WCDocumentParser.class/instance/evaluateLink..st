parsing
evaluateLink: aHtmlEntity

	Transcript show: (aHtmlEntity getAttribute: 'href') ;cr.
	self links add: (aHtmlEntity getAttribute: 'href')