initialize-release
initialize: aParentUrl

	super initialize.
	self extent: 800@800.
	self scroller extent: 600@700;
		color: Color white.
	self extent: self scroller extent.
	self hScrollBarPolicy: #always.
	self vScrollBarPolicy: #always.
	
	self vertices: OrderedCollection new.
	self edges: OrderedCollection new.
	self edgePlane: (Morph new color: (Color black alpha: 0); extent: self extent).
	self scroller addMorphFront: self edgePlane.
	self vertexPlane: (Morph new color: (Color black alpha: 0); extent: self extent).
	self scroller addMorphFront: self vertexPlane.
	
	self vertices add: (WCUIVertex new 
		center: (self scroller width / 2) @ 50;
		label: aParentUrl;
		layer: 1;
		index: 1;
		intraLayerPosition: 1).
	self vertexPlane addMorph: self vertices first.
	self layers:( OrderedCollection newFrom: {OrderedCollection new}).
	(self layers at: 1) add: self vertices first