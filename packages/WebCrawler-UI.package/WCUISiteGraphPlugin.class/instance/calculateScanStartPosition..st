graphUpdating
calculateScanStartPosition: aVertex

	| hashedPosition hashedPositionOffset |
	hashedPosition := self hashPosition: aVertex position.
	hashedPositionOffset := (self repulsionRadius / 2) floor.
	^ (hashedPosition - hashedPositionOffset) max: 1 asPoint