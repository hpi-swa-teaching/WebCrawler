treeUpdate
rectifyVertexPositions

	| minLayerStart rectifyVector |
	minLayerStart := 1000.
	minLayerStart := self vertices inject: minLayerStart into: [:prev :vertex |
		prev min: vertex position x].
	rectifyVector := (self interLayerSpacing - minLayerStart) @ 0. 
	self vertices do: [:vertex |
		vertex position: vertex position + rectifyVector].