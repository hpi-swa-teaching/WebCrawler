creators
addAnimationButton

	| buttonHeight |
	buttonHeight := 60.
	self animationButton: (PluggableButtonMorph new
		color: self options color2;
		position: (self plugin position x + self plugin extent x + 30) @ (self plugin position y + self button extent y + 30); 
		target: [
			Transcript show: 'site graph button clicked'.
			self plugin activateDrawIterations: self plugin activateDrawIterations not];
		actionSelector: #value;
		label: 'Animation' font: self options defaultFont;
		cornerStyle: #rounded;
		cornerRadius: buttonHeight / 5;
		openInWorld;
		yourself).
	
	self animationButton extent: self button extent x @ buttonHeight.
	self addMorphFront: self animationButton