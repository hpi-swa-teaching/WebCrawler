treeUpdate
createVertex: anUrl parent: aVertex

	| newVertex |
	newVertex := (WCUIVertex new label: anUrl;
		layer: aVertex layer + 1;
		createContextMenuFor: self crawler link: anUrl;
		updateEdge: aVertex -> 0;
		yourself).
	aVertex updateEdge: newVertex -> 0.
	self vertexPlane addMorphBack: newVertex.
	self vertices add: newVertex.
	^ newVertex