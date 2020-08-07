graphUpdating
getEdgeMorph: anEdge vertices: vertices

	| edgeVertices result |
	result := self edges 
		detect: [:existingEdge |
			edgeVertices := existingEdge key.
			(edgeVertices key = vertices key 
				or: [edgeVertices key = vertices value]) 
			and: [edgeVertices value = vertices key  
				or: [edgeVertices value = vertices value]]] ifNone: [nil].
	result isNil ifFalse: [result := result value].
	^ result