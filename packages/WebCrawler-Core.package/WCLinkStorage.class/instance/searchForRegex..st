filtering
searchForRegex: aRegex

	| filteredLinks |
	
	Transcript show: aRegex.
	filteredLinks := OrderedCollection new.
	
	self options maintainVisited
		ifTrue: [filteredLinks := self links select: [:link | (link key matchesRegex: aRegex)]]
		ifFalse: [filteredLinks := self links select: [:link | (link matchesRegex: aRegex)]].
	
	
	"filteredLinks do: [:link | Transcript show: link; cr].
	Transcript show: filteredLinks size."
	
	^ filteredLinks