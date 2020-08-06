initialize-release
initialize

	super initialize.
	self balloonText: 'enter url here!';
		borderStyle: (BorderStyle width: 3 color: Color veryDarkGray);
		askBeforeDiscardingEdits: false;
		vScrollBarPolicy: #never;
		hScrollBarPolicy: #never.
	self textMorph beAllFont: self defaultFont;
		margins: self defaultInputFieldMargins;
		contents: ''.