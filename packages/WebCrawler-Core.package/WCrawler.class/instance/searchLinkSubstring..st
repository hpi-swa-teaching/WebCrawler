filtering
searchLinkSubstring: aString

	| filteredLinks searchString |
	filteredLinks := OrderedCollection new.
	searchString := '*',aString,'*'.
	
	filteredLinks := self links select: [:link | (searchString match: link)].
	
	^ filteredLinks