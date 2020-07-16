treeUpdate
recursiveTreeUpdate: aVertex

	| children newChildren result |
	(self crawler storage siteMap siteMap includesKey: aVertex label)
		ifFalse: [^self].
	children := self crawler storage siteMap siteMap at: aVertex label.
	newChildren := children reject: 
		[:newChild | 
			result := aVertex edges inject: false into: [:previous :edge | 
				previous or: [(self vertices at: edge key) label = newChild]].
			result].
	newChildren do: [:newChild |
		self addChild: newChild to: aVertex].
	2 to: aVertex edges size do: [:index |
		| childVertex edge |
		edge := aVertex edges at: index.
		childVertex := self vertices at: edge key.
		self recursiveTreeUpdate: childVertex]