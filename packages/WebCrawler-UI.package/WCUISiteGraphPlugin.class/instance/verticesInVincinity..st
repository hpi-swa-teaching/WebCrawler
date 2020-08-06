graphUpdating
verticesInVincinity: aVertex

	| hashedPosition startPoint collisions currentPosition |
	hashedPosition := self hashPosition: aVertex position.
	startPoint := hashedPosition - (self repulsionRadius / 2) floor.
	collisions := Set new.
	0 to: self repulsionRadius do: [:i |
		0 to: self repulsionRadius do: [:j |
			currentPosition := startPoint + (i@j).			
			(self positionHashMap at: currentPosition x at: currentPosition y) do: [:vertex |
				vertex ~= aVertex ifTrue: [collisions add: vertex]]]].
	^ collisions