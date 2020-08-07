treeUpdate
addChild: anUrl to: aVertex

	| newVertex |
	newVertex := self createVertex: anUrl parent: aVertex.
	self createEdgeFrom: aVertex to: newVertex.
	self insertIntoLayer: newVertex