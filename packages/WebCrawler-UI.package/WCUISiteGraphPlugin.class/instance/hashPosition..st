graphUpdating
hashPosition: aPoint

	| dividend hashed |
	dividend := self scroller extent / self positionHashMapResolution.
	hashed := (aPoint / dividend) floor + 1.
	^  self clamp: hashed min: 1 asPoint max: self positionHashMap columnCount asPoint
	