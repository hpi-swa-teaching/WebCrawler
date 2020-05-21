filtering
searchForRegex: aRegex

	| filteredLinks |
	
	Transcript show: aRegex.
	filteredLinks := OrderedCollection new.
	
	filteredLinks := self links select: [:link | (link matchesRegex: aRegex)].
	
	filteredLinks do: [:link | Transcript show: link; cr].
	Transcript show: filteredLinks size.
	
	^ filteredLinks