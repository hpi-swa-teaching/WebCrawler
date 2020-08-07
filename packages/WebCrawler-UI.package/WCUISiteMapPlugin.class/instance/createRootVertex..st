initialize-release
createRootVertex: anUrl

	self vertices add: (WCUIVertex new 
		center: (self scroller width / 2) @ self interLayerSpacing;
		label: anUrl;
		layer: 1;
		intraLayerPosition: 1;
		yourself).
	self vertexPlane addMorph: self vertices first.
	self layers:( OrderedCollection with: (OrderedCollection with: self vertices first))