creators
addInputField: aContent height: aHeight

	self substringInputField: (UserText new
		backgroundColor: (Color lightGray);
		contents: aContent;
		autoFit: false;
		wrapFlag: false;
		beAllFont: self options defaultFont;
		position: self position + ((self height * 0.04) @ (self height * aHeight));
		borderStyle: (BorderStyle width: 3 color: self options color4);
		margins: 7;
		openInWorld;
		yourself).

	self addMorphFront: self substringInputField.
	self substringInputField extent: (self width * 0.8) @ (self height * 0.075)