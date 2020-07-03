initialize-release
initialize

	super initialize.
	self extent: 800@800.
	self scroller extent: 600@700;
		color: Color white.
	self extent: self scroller extent.
	self hScrollBarPolicy: #always.
	self vScrollBarPolicy: #always.
	
	self vertices: OrderedCollection new.
	self edges: OrderedCollection new.
	self positionHashMap: (Matrix rows: self positionHashMapResolution columns: self positionHashMapResolution tabulate: [:x :y | OrderedCollection new]).
	self activateDrawIterations: false.
	self edgePlane: (Morph new color: (Color black alpha: 0); extent: self extent).
	self scroller addMorphFront: self edgePlane.
	self vertexPlane: (Morph new color: (Color black alpha: 0); extent: self extent).
	self scroller addMorphFront: self vertexPlane
	