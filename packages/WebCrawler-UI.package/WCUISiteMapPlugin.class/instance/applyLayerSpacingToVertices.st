treeUpdate
applyLayerSpacingToVertices

	| layerHeightStart layerWidthStart |
	layerHeightStart := self interLayerSpacing.
	self layers do: [:layer |
		layerWidthStart := self getLayerXStart: layer.
		self placeAllVerticesOfLayer: layer startPosition: layerWidthStart @ layerHeightStart.
		layerHeightStart := layer last center y + self interLayerSpacing]