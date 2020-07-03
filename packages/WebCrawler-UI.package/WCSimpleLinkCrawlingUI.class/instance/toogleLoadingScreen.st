creators
toogleLoadingScreen
	
	| morph textMorph |
	
	self loading 
		ifFalse: [
			morph := Morph new.
			morph width: self options defaultWindowWidth + 100; 
			height: self options defaultWindowHeight;
			position: self position;
			beTransparent.
			textMorph := TextMorph new contents: 'loading...'.
			textMorph fontName: 'Monaco' size: 49.
			textMorph position: (self position + (450 @ 350)).
			morph addMorphFront: textMorph.
			self loadingScreen: morph.
			self loading: true]
		ifTrue: [
			self loadingScreen delete.
			self loading: false]