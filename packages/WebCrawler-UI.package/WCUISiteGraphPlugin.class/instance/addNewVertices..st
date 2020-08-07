graphUpdating
addNewVertices: aCollection

	| newVertices |
	aCollection size ~= self vertices size
		ifTrue: [
			newVertices := (aCollection copyFrom: self vertices size + 1 to: aCollection size).
			self vertexUpdate: newVertices].