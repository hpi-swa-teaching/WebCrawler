creators
createLoadingMorph

	^ Morph new width: self defaultLoadingMorphWidth; 
			height: self defaultWindowHeight;
			position: self position;
			beTransparent;
			yourself