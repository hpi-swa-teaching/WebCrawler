creators
createLoadingMorph

	^ Morph new width: self defaultWindowWidth + 100; 
			height: self defaultWindowHeight;
			position: self position;
			beTransparent;
			yourself