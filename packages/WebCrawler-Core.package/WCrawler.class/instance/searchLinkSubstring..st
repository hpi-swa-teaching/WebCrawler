filtering
searchLinkSubstring: aString

	| filteredLinks searchString |
	filteredLinks := OrderedCollection new.
	searchString := '.*',(aString),'.*'.
	
	filteredLinks := self links select: [:link | (link matchesRegex: searchString)].
	
	filteredLinks do: [:link | Transcript show: link; cr].
	
	^ filteredLinks