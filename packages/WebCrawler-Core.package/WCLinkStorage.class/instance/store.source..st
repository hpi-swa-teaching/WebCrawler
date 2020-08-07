storing
store: anOrderedCollection source: aParentUrlString

	| processedLinks |
	processedLinks := self processLinks: anOrderedCollection parent: aParentUrlString.
	self updateRelevantAuthorities: processedLinks.
	self maintainDataStructures: processedLinks parent: aParentUrlString.
	self newLinks: processedLinks.
	self links: self links, processedLinks