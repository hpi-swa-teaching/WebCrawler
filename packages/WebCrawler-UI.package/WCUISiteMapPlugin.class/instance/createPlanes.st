initialize-release
createPlanes

	self edgePlane: (Morph new color: (Color black alpha: 0); extent: self extent; yourself);
		vertexPlane: (Morph new color: (Color black alpha: 0); extent: self extent; yourself).
	self scroller addMorphFront: self edgePlane;
		addMorphFront: self vertexPlane