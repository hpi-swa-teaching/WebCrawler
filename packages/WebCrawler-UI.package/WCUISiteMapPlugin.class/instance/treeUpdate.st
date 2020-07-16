treeUpdate
treeUpdate

	^ [:list |
		self recursiveTreeUpdate: self vertices first.
		self applyCorrectLayerSpacing.
		self updateEdges.
		self hScrollBar setValueFraction: 0.5]
