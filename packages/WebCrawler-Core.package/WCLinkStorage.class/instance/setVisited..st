storing
setVisited: anOrderedCollection

	| newLinks |
	self options maintainVisited ifFalse: [^ self].
	
	newLinks := self links collect: [:linkAssociation |
		(anOrderedCollection includes: linkAssociation key)
			ifTrue: [linkAssociation key -> true]
			ifFalse: [linkAssociation]].
	self links: newLinks