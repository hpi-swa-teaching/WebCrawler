accessing
findIndexToInsert: aVertex parent: aParentVertex

	| indexToInsert layerToInsertIn localParent |
	indexToInsert := 0.
	layerToInsertIn := self layers at: aVertex layer.
	layerToInsertIn do: [:vertexInLayer |
		localParent := vertexInLayer edges first key.
		localParent intraLayerPosition < aParentVertex intraLayerPosition
			ifTrue: [indexToInsert := (layerToInsertIn indexOf: vertexInLayer) + 1]
			ifFalse: [vertexInLayer intraLayerPosition: vertexInLayer intraLayerPosition + 1]].
	^ indexToInsert