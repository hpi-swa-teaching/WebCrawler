positionHashing
removeVertexHash: aVertex atHash: aHashPoint

	| hashMapSize actualPoint |
	hashMapSize := (self positionHashMap rowCount @ self positionHashMap columnCount).
	aHashPoint eightNeighbors do: [:anotherPoint |
		actualPoint := self clamp: anotherPoint min: 1 asPoint max: hashMapSize.
		(self positionHashMap at: actualPoint x at: actualPoint y) remove: aVertex ifAbsent: []].