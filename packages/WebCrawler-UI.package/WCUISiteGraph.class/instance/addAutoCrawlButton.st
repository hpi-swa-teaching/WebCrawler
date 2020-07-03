creators
addAutoCrawlButton

	| buttonHeight |
	buttonHeight := 60.
	self button: (PluggableButtonMorph new
		color: self options color2;
		position: (self plugin position x + self plugin extent x + 30) @ (self plugin position y); 
		target: [
			Transcript show: 'site graph button clicked'.
			self crawler startAutoCrawl: self crawler storage links first];
		actionSelector: #value;
		label: 'AutoCrawl' font: self options defaultFont;
		cornerStyle: #rounded;
		cornerRadius: buttonHeight / 5;
		openInWorld;
		yourself).
	
	self button extent: self button extent x @ buttonHeight.
	self addMorphFront: self button