graphUpdating
vertexUpdate: aCollection

	| newVertex |
	aCollection do: [:link |
		newVertex := self createVertex: link.
		self hashVertex: newVertex.
		self vertexPlane addMorph: newVertex.
		self vertices add: newVertex].