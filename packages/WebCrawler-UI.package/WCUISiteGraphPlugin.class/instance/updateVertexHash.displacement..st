positionHashing
updateVertexHash: aVertex displacement: aPoint

	| newHashPosition oldHashPosition |
	(self hashPosition: aVertex position) ~= (self hashPosition: aVertex position + aPoint)
		ifTrue: [
			oldHashPosition := self hashPosition: aVertex position.
			newHashPosition := self hashPosition: (aVertex position + aPoint).
			self removeVertexHash: aVertex atHash: oldHashPosition.
			(self positionHashMap at: newHashPosition x at: newHashPosition y) add: aVertex]