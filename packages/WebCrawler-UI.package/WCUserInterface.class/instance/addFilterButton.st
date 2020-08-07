creators
addFilterButton

	self filterButton: (WCUIButton new initialize: 'Filter' 
		target: [
			self uiLinkFilter: (WCUILinkFilter new 
				initialize: self urlInputField contents;
				crawler: self crawler;
				yourself)]).
	self addMorphFront: self filterButton.
	self filterButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self filterButton extent y + self buttonPadding))