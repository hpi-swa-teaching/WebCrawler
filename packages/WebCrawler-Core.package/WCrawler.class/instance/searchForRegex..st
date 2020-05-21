filtering
searchForRegex: aRegex

	| filteredLinks |
	filteredLinks := OrderedCollection new.
	
	filteredLinks := self links select: [:link | (link matchesRegex: aRegex)].
	
	filteredLinks do: [:link | Transcript show: link; cr].
	Transcript show: filteredLinks size.
	
	^ filteredLinks