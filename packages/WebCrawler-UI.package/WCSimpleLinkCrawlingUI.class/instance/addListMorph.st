creators
addListMorph

	self listMorph: (WCUILinkList new
		position: self urlInputField position + ( 0 @ (self height * 0.17));
		doubleClickSelector: #loadUrl;
		clickAction: [:link |
			self urlInputField textMorph contents: link];
		doubleClickAction: [:link |
			self urlInputField textMorph contents: link.
			self startCrawling];
		openInWorld;
		hScrollBarPolicy: #whenNeeded;
		vScrollBarPolicy: #whenNeeded;
		yourself).
	
	self addMorphFront: self listMorph.
	self listMorph extent: self urlInputField width @ (self height * 0.7)