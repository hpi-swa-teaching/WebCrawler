creators
addListMorph

	self listMorph: (WCUILinkList new
			position: self position + self defaultListPosition;
			extent: self urlInputField width @ self defaultListHeight; 
			doubleClickSelector: #loadUrl;
			clickAction: [:link |
					self urlInputField textMorph contents: link];
			doubleClickAction: [:link |
				self urlInputField textMorph contents: link.
				self startCrawling];
			yourself);
		addMorphFront: self listMorph