graphUpdating
updateVertexHash: aVertex displacement: aPoint

	(self hashPosition: aVertex position) ~= (self hashPosition: aVertex position + aPoint)
		ifTrue: [
			| oldHashPosition newHashPosition |
			oldHashPosition := self hashPosition: aVertex position.
			newHashPosition := self hashPosition: (aVertex position + aPoint).
			oldHashPosition eightNeighbors do: [:anotherPoint |
				| actualPoint |
				actualPoint := self clamp: anotherPoint min: 1 asPoint max: (self positionHashMap rowCount @ self positionHashMap columnCount).
				(self positionHashMap at: actualPoint x at: actualPoint y) remove: aVertex ifAbsent: []].
			(self positionHashMap at: newHashPosition x at: newHashPosition y) add: aVertex]