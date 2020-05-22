storing
storeLinks: anOrderedCollection

	"(self options storeUniqueUrls)
		ifTrue: ["
			" check for every url if it is already included in link list " 
			self flag: #toDo. " implement bloom filter for this task! ""
			self links: self links, (anOrderedCollection select: [:link | self linkNotIncluded: link ])]
		ifFalse: [
			self links: self links, anOrderedCollection]"
	self links: self links, anOrderedCollection