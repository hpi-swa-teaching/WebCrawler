graphUpdating
verticesInVincinity: aVertex

	| collisions startPosition |
	startPosition := self calculateScanStartPosition: aVertex.
	collisions := Set new.
	0 to: self repulsionRadius do: [:i |
		0 to: self repulsionRadius do: [:j |
			self addCollisionsFor: aVertex to: collisions atPosition: startPosition + (i@j)]].
	^ collisions