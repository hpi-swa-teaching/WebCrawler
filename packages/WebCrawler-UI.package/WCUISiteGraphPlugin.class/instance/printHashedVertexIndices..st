graphUpdating
printHashedVertexIndices: aVertex

	| out |
	out := OrderedCollection new.
	1 to: self positionHashMap columnCount do: [:i |
		1 to: self positionHashMap rowCount do: [:j |
			((self positionHashMap at: j at: i) includes: aVertex)
				ifTrue: [out add: (j@i)]]].
	^ out