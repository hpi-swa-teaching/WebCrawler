creators
addSiteGraphButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self graphButton: (PluggableButtonMorph new
		color: self options color2;
		position: self crawlButton position x @ (self crawlButton position y +( self height * 0.34)); 
		target: [
			Transcript show: 'site graph button clicked'.
			self uiSiteGraph: WCUISiteGraph new.
			self uiSiteGraph crawler: self crawler.];
		actionSelector: #value;
		label: 'Graph' font: self options defaultFont;
		cornerStyle: #rounded;
		cornerRadius: textFieldSize / 5;
		openInWorld;
		yourself).
	
	self graphButton extent: self graphButton extent x @ textFieldSize.
	self addMorphFront: self graphButton