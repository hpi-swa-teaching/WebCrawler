graphUpdating
drawIteration
	
	| totalDisplacement |
	totalDisplacement := self vertexIteration.
	self rectifyVertexPositions.
	self edgeIteration.
	totalDisplacement < self minimumDisplacementThreshold
		ifTrue: [
			Transcript show: 'movement stable!';cr. 
			self activateDrawIterations: false].