positionHashing
hashPosition: aPoint

	| dividend hashed |
	dividend := self pixelPerHashCell.
	hashed := (aPoint / dividend) floor + 1.
	(hashed x > self positionHashMap rowCount or: [hashed y > self positionHashMap columnCount])
		ifTrue: [self resizePositionHashMap: hashed].
	^ hashed
	