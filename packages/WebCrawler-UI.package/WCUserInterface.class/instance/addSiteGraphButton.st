creators
addSiteGraphButton

	self graphButton: (WCUIButton new initialize: 'Graph' 
		target: [
			self uiSiteGraph: (WCUISiteGraph new 
				crawler: self crawler)]).
	self addMorphFront: self graphButton.
	self graphButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self graphButton extent y + self buttonPadding))