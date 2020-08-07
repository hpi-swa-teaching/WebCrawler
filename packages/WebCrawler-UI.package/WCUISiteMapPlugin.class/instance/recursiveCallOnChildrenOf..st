treeUpdate
recursiveCallOnChildrenOf: aVertex

	| childVertex |
	2 to: aVertex edges size do: [:index |
		childVertex := (aVertex edges at: index) key.
		self recursiveTreeUpdate: childVertex]