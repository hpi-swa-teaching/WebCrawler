creators
addAnimationButton

	self animationButton: (WCUIButton new initialize: 'Animation' 
		target: [self plugin activateDrawIterations: self plugin activateDrawIterations not]).
	self animationButton position: self lastButtonStartPosition.
	self addMorphFront: self animationButton.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self animationButton extent y + self buttonPadding))