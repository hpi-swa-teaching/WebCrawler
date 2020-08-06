positionHashing
resizePositionHashMap: aPoint

	self positionHashMap: 
		(Matrix 
			rows: (self positionHashMap rowCount max: aPoint x)
			columns: (self positionHashMap columnCount max: aPoint y)
			tabulate: [:x :y | 
				(x <= self positionHashMap rowCount and: [y <= self positionHashMap columnCount])
					ifTrue: [self positionHashMap at: x at: y]
					ifFalse: [OrderedCollection new]])