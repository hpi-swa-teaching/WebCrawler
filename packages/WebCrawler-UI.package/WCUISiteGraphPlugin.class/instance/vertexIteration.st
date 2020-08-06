graphUpdating
vertexIteration

	| totalDisplacement displacement |
	totalDisplacement := 0.
	self vertices do: [:vertex |
		displacement := self computeDisplacement: vertex.
		totalDisplacement := totalDisplacement + displacement x abs + displacement y abs.
		self updateVertexHash: vertex displacement: displacement.
		vertex position: vertex position + displacement].
	^ totalDisplacement