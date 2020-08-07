treeUpdate
treeUpdate

	^ [:list |
		self recursiveTreeUpdate: self vertices first.
		self applyCorrectLayerSpacing.
		self updateEdges.
		self scrollToMid]
