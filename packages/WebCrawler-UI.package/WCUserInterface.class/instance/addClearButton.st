creators
addClearButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self clearButton: (PluggableButtonMorph new
		position: self crawlButton position x @ (self crawlButton position y +( self height * 0.68)); 
		target: [
			Transcript show: 'clear button clicked'.
			self crawler reset.
			self listMorph updateList: OrderedCollection new];
		actionSelector: #value;
		label: 'Clear' font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: textFieldSize / 5;
		openInWorld;
		yourself).
	
	self clearButton extent: self clearButton extent x @ textFieldSize.
	self addMorphFront: self clearButton