initialize-release
setTextMorphAttributes: aCrAction

	self textMorph beAllFont: self defaultFont;
		margins: self defaultInputFieldMargins;
		contents: '';
		crAction: aCrAction