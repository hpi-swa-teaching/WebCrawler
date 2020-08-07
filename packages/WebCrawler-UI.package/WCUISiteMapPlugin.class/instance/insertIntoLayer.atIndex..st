treeUpdate
insertIntoLayer: aVertex atIndex: aNumber

	| oldLayer |
	oldLayer := self layers at: aVertex layer.
	self layers at: aVertex layer put: 
		((oldLayer copyFrom: 1 to: (aNumber - 1)), 
		(OrderedCollection with: aVertex), 
		(oldLayer copyFrom: (aNumber max: 1) to: oldLayer size))