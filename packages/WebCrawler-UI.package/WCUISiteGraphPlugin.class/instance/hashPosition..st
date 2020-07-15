graphUpdating
hashPosition: aPoint

	| dividend hashed |
	dividend := self scroller extent / self positionHashMapResolution.
	hashed := (aPoint / dividend) floor + 1.
	(hashed x > self positionHashMap rowCount or: [hashed y > self positionHashMap columnCount])
		ifTrue: [
			Transcript show: 'doing resize! previous size: ', (self positionHashMap rowCount @ self positionHashMap columnCount), ' but hash: ', hashed;cr.
			self positionHashMap: 
				(Matrix 
					rows: (self positionHashMap rowCount max: hashed x)
					columns: (self positionHashMap columnCount max: hashed y)
					tabulate: [:x :y | 
						(x <= self positionHashMap rowCount and: [y <= self positionHashMap columnCount])
							ifTrue: [self positionHashMap at: x at: y]
							ifFalse: [OrderedCollection new]]).
			Transcript show: 'new size: ', (self positionHashMap rowCount @ self positionHashMap columnCount);cr]."
	^ self clamp: hashed min: 1 asPoint max: self positionHashMap rowCount @ self positionHashMap columnCount"
	^ hashed max: 1 asPoint
	