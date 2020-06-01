creators
addListMorph

	self listMorph: (WCLinkListMorph new
		"autoFit: false;
		wrapFlag: false;
		beAllFont: self options defaultFont;"
		position: self position + ((self height * 0.1) @ (self height * 0.35));
		"borderStyle: (BorderStyle width: 3 color: self options color4);
		margins: 7;"
		openInWorld;
		yourself).
	self listMorph scroller color: self options color2.
	self listMorph scroller position: self listMorph position.
	Transcript show: 'list pos: ', self listMorph position, ' scroll pos: ', self listMorph scroller position;cr.
	self addMorphFront: self listMorph.
	self listMorph extent: (self width * 0.8) @ (self height * 0.6)