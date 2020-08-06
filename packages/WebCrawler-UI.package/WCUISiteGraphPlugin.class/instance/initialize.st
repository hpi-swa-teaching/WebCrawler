initialize-release
initialize

	super initialize.
	(self scroller) 
		extent: self defaultScrollerSize;
		color: Color white.
	self 
		extent: (self scroller extent);
		hScrollBarPolicy: #always;
		vScrollBarPolicy: #always;
		vertices: OrderedCollection new;
		edges: OrderedCollection new;
		positionHashMap: self createNewPositionHashMap;
		activateDrawIterations: false;
		edgePlane: (Morph new color: (Color black alpha: 0); extent: self extent);
		vertexPlane: (Morph new color: (Color black alpha: 0); extent: self extent).
	
	(self scroller) 
		addMorphFront: self edgePlane;
		addMorphFront: self vertexPlane
	