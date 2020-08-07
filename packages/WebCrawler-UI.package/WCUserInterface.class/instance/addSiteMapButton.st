creators
addSiteMapButton

	self mapButton: (WCUIButton new initialize: 'SiteMap' 
		target: self siteMapButtonTarget).
	self addMorphFront: self mapButton.
	self mapButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self mapButton extent y + self buttonPadding))