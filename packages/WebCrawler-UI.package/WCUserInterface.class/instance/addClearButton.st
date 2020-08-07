creators
addClearButton

	self clearButton: (WCUIButton new initialize: 'Clear' 
		target: [
			self crawler reset.
			self listMorph updateList: OrderedCollection new]).
	self addMorphFront: self clearButton.
	self clearButton position: self position + self lastButtonStartPosition.
	self lastButtonStartPosition: self lastButtonStartPosition + (0@(self clearButton extent y + self buttonPadding))