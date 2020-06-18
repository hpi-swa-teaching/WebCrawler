accessing
isVisited: aUrl

	self options maintainVisited ifFalse: [^ false].
	
	self links do: [:link | link key = aUrl ifTrue: [^ link value]].
	^ false