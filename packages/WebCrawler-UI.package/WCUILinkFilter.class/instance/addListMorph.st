creators
addListMorph

	self listMorph: (PluggableListMorph new
		"autoFit: false;
		wrapFlag: false;
		beAllFont: self options defaultFont;"
		position: self position + ((self height * 0.1) @ (self height * 0.35));
		"borderStyle: (BorderStyle width: 3 color: self options color4);
		margins: 7;"
		openInWorld;
		yourself).

	self addMorphFront: self listMorph.
	self listMorph extent: (self width * 0.8) @ (self height * 0.6)