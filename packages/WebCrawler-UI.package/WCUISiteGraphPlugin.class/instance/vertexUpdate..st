graphUpdating
vertexUpdate: aCollection

	aCollection do: [:link |
		| newVertex newPosition |
		newPosition := (self extent x atRandom) @ (self extent y atRandom).
		"newPosition := 100 asPoint + (3000 atRandom @ 3000 atRandom)."
		newVertex := WCUIVertex new.
		newVertex position: newPosition.
		newVertex label: link.
		newVertex index: self vertices size + 1.
		self hashVertex: newVertex.
		self vertexPlane addMorph: newVertex.
		self vertices add: newVertex].
	Transcript show: 'ADDED ', aCollection size, ' VERTICES!';cr.