creators
addRegexInputField

	self regexInputField: (UserText new
		backgroundColor: (Color lightGray);
		contents: 'enter regex here!';
		autoFit: false;
		wrapFlag: false;
		beAllFont: self options defaultFont;
		position: self position + ((self height * 0.04) @ (self height * 0.14));
		borderStyle: (BorderStyle width: 3 color: self options color4);
		margins: 7;
		openInWorld;
		yourself).

	self addMorphFront: self regexInputField.
	self regexInputField extent: (self width * 0.8) @ (self height * 0.075)