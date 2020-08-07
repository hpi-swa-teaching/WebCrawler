storing
addLinks: anOrderedCollection parent: aParentUrl

	(self domains includes: aParentUrl)
		ifFalse: [self domains add: aParentUrl].
	anOrderedCollection do: [:link | 
		self addLink: link parent: aParentUrl]