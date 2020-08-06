graphUpdating
edgeUpdate: aCollection

	| vertices edgeMorph |
	aCollection do: [:edge | 
		vertices := self getVerticesOfEdge: edge.
		self vertexEdgeUpdate: vertices weight: edge value.
		edgeMorph := self getEdgeMorph: edge vertices: vertices.
		edgeMorph isNil
			ifTrue: [self createEdge: edge vertices: vertices]
			ifFalse: [self updateEdgeWeight: edgeMorph weight: edge value]]