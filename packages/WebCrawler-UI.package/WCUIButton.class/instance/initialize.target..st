initialization
initialize: aLabelString target: aBlockClosure

	super initialize.
	self target: aBlockClosure;
		actionSelector: #value;
		label: aLabelString font: self defaultFont;
		cornerStyle: #rounded;
		cornerRadius: self defaultSize / 5;
		extent: self extent x @ self defaultSize