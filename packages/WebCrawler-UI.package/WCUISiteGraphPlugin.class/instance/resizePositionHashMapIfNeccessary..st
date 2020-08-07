positionHashing
resizePositionHashMapIfNeccessary: aHashedPoint

	(aHashedPoint x > self positionHashMap rowCount 
		or: [aHashedPoint y > self positionHashMap columnCount])
		ifTrue: [self resizePositionHashMap: aHashedPoint].