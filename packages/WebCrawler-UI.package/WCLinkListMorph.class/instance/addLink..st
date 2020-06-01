links
addLink: aString

	| linkMorph entryMorph heightY textMargin |
	self links add: aString.
	textMargin := 3.
	heightY := self options defaultFont pointSize + 2 * textMargin.
	(entryMorph := RectangleMorph new)
		extent: self extent x @ heightY;
		color: self nextBackgroundColor;
		position: self scroller position.
	(linkMorph := StringMorph new)
		contents: aString;
		font: self options defaultFont;
		color: self options colorText;
		position: entryMorph position + textMargin asPoint.
	entryMorph addMorphFront: linkMorph.
	linkMorph position: entryMorph position + textMargin.
	self list add: entryMorph.
	self update