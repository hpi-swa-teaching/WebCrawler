initialize-release
initialize

	super initialize.
	self options: WCUIOptions new.
	self balloonText: 'enter url here!';
		borderStyle: (BorderStyle width: 3 color: self options color4);
		askBeforeDiscardingEdits: false;
		vScrollBarPolicy: #never;
		hScrollBarPolicy: #never.
	self textMorph beAllFont: self options defaultFont;
		margins: self options defaultInputFieldMargins;
		contents: ''.