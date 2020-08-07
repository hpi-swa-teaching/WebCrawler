initialization
initialize: aLabelString target: aBlockClosure font: aFont

	super initialize.
	self target: aBlockClosure;
		actionSelector: #value;
		label: aLabelString font: aFont;
		cornerStyle: #rounded;
		cornerRadius: self defaultSize / 5;
		extent: self extent x @ self defaultSize