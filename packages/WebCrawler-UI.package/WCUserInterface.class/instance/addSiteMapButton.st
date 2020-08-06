creators
addSiteMapButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self mapButton: (PluggableButtonMorph new
		position: self crawlButton position x @ (self crawlButton position y +( self height * 0.51)); 
		target: [
			Transcript show: 'site graph button clicked'.
			self crawler links isEmpty
				ifFalse: [
					self uiSiteMap: (WCUISiteMap new initialize: self urlInputField contents asString).
					self uiSiteMap crawler: self crawler.
					self uiSiteMap plugin treeUpdate value: OrderedCollection new]];
		actionSelector: #value;
		label: 'SiteMap' font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: textFieldSize / 5;
		openInWorld;
		yourself).
	
	self mapButton extent: self mapButton extent x @ textFieldSize.
	self addMorphFront: self mapButton