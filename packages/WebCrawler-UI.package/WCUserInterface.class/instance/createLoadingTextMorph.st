creators
createLoadingTextMorph
	
	| loadingTextPointSize |
	loadingTextPointSize := 49.
	^ TextMorph new contents: 'loading...';
		fontName: 'Monaco' size: loadingTextPointSize;
		position: self position + self defaultLoadingTextPosition;
		yourself