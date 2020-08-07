creators
addAnimationButton

	self animationButton: (WCUIButton new initialize: 'Animation' 
		target: [self plugin activateDrawIterations: self plugin activateDrawIterations not]).
	self addMorphFront: self animationButton.
	self animationButton position: self position + self lastButtonStartPosition.
	Transcript show: 'own pos: ', self position, ' lbsp: ', self lastButtonStartPosition;cr.
	Transcript show: 'now animation button position: ', self animationButton position;cr.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self animationButton extent y + self buttonPadding))