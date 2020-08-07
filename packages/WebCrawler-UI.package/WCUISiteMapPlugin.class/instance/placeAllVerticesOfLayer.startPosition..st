treeUpdate
placeAllVerticesOfLayer: aCollection startPosition: aPoint

	| layerStart |
	layerStart := aPoint.
	aCollection do: [:vertex |
		vertex center: layerStart.
		layerStart := layerStart + (self intraLayerSpacing @ self intraLayerHeightOffset)].