treeUpdate
createNewLayerWith: aVertex

	self layers add: (OrderedCollection with: aVertex).
	aVertex intraLayerPosition: 1