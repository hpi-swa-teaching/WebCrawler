treeUpdate
recursiveTreeUpdate: aVertex

	(self siteMap includesKey: aVertex label)
		ifFalse: [^self].
	self updateChildrenOf: aVertex.
	self recursiveCallOnChildrenOf: aVertex.