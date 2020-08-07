graphUpdating
vertexIteration

	| displacement |
	^ self vertices inject: 0 into: [:totalDisplacement :vertex |
		displacement := self computeDisplacement: vertex.
		self updateVertexHash: vertex displacement: displacement.
		vertex position: vertex position + displacement.
		totalDisplacement + displacement x abs + displacement y abs]