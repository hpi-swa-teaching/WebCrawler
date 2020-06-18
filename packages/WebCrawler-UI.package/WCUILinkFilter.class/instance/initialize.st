initialize-release
initialize

	super initialize.
	self setLabel: 'WebCrawler - Filter'.
	self setWindowColor: Color darkGray.
	self extent: (600@800).
	self options: WCUIOptions new.
	self options setDarkMode.
	
	self addSubstringInputField.
	self addSubstringButton.
	self addRegexInputField.
	self addRegexButton.
	self addSecondDomainButton.
	self addSubDomainButton.
	self addOutgoingDomainsButton.
	self addListMorph.
	self openInWorld.
	self extent: (600@800).