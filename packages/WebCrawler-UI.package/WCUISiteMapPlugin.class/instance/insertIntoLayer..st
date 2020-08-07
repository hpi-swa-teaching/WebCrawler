treeUpdate
insertIntoLayer: aVertex

	| indexToInsert parent |
	parent := aVertex edges first key.
	aVertex layer > self layers size
		ifTrue: [self createNewLayerWith: aVertex]
		ifFalse: [
			indexToInsert := self findIndexToInsert: aVertex parent: parent.
			self insertIntoLayer: aVertex atIndex: indexToInsert.
			aVertex intraLayerPosition: indexToInsert]