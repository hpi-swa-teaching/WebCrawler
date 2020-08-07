treeUpdate
updateChildrenOf: aVertex
	
	| children newChildren |
	children := self siteMap at: aVertex label.
	newChildren := self filterNewChildren: children forVertex: aVertex.
	newChildren do: [:newChild |
		self addChild: newChild to: aVertex].