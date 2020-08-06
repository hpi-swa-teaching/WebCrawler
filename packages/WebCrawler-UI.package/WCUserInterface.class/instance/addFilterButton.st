creators
addFilterButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self filterButton: (PluggableButtonMorph new
		position: self crawlButton position x @ (self crawlButton position y +( self height * 0.17)); 
		target: [
			Transcript show: 'filter button clicked'.
			self uiLinkFilter: WCUILinkFilter new.
			self uiLinkFilter crawler: self crawler.];
		actionSelector: #value;
		label: 'Filter' font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: textFieldSize / 5;
		openInWorld;
		yourself).
	
	self filterButton extent: self filterButton extent x @ textFieldSize.
	self addMorphFront: self filterButton