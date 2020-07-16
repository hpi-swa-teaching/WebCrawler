treeUpdate
applyCorrectLayerSpacing

	| treeCenter minLayerStart distanceToCenter layerHeightStart |
	treeCenter := self vertices first center x.
	layerHeightStart := 50.
	minLayerStart := 1000.
	self layers do: [:layer |
		| layerStart |
		layerStart := treeCenter - ((layer size / 2) *  self intraLayerSpacing).
		minLayerStart := minLayerStart min: layerStart.
		layer do: [:vertex |
			distanceToCenter := (layerStart - treeCenter) abs.
			vertex center: layerStart @ layerHeightStart.
			layerHeightStart := layerHeightStart + 20.
			layerStart := layerStart + self intraLayerSpacing].
		layerHeightStart := layerHeightStart + self interLayerSpacing].
	self vertices do: [:vertex |
		vertex position: vertex position + ((50 - minLayerStart) @ 0)].