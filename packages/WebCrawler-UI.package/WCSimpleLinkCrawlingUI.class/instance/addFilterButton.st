creators
addFilterButton

	| textFieldSize | 
	textFieldSize := self urlInputField height.

	self filterButton: (SimpleButtonMorph new
		color: self options color2;
		position: self position + ((self width * 0.86) @ (self height * 0.14)); 
		target: [
			Transcript show: 'filter button clicked'.
			self uiLinkFilter: WCUILinkFilter new.
			self uiLinkFilter crawler: self crawler.];
		actionSelector: #value;
		label: 'Filter' font: self options defaultFont;
		extent: textFieldSize @ textFieldSize;
		openInWorld;
		yourself).
	
	self addMorphFront: self filterButton