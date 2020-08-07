positionHashing
hashPosition: aPoint

	| dividend hashed |
	dividend := self pixelPerHashCell.
	hashed := (aPoint / dividend) floor + 1.
	self resizePositionHashMapIfNeccessary: hashed.
	^ hashed max: 1 asPoint
	