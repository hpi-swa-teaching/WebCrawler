graphUpdating
getEdgeMorph: anEdge vertices: vertices

	^ self edges 
		detect: [:existingEdge | 
				  (existingEdge key key = vertices key or: [existingEdge key key = vertices value]) 
			and: [existingEdge key value = vertices key  or: [existingEdge key value = vertices value]]] ifNone: [nil]