initialize-release
initialize

	super initialize.
	self color: Color darkGray; 
		width: 600; 
		height: 600.
	
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
	