graphUpdating
drawIteration
	
	| totalDisplacement |
	totalDisplacement := self vertexIteration.
	self rectifyVertexPositions.
	self edgeIteration.
	self deactivateIfStable: totalDisplacement