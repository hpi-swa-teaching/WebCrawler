graphUpdating
addCollisionsFor: aVertex to: aCollection atPosition: aPoint

	self resizePositionHashMapIfNeccessary: aPoint.
	(self positionHashMap at: aPoint x at: aPoint y) do: [:vertex |
		vertex ~= aVertex ifTrue: [aCollection add: vertex]]