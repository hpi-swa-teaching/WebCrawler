filtering
filterUniqueUrls: anOrderedCollection

	self options maintainVisited
		ifTrue: [
			^ anOrderedCollection reject: [:link | self links includes: link]]
		ifFalse: [
			^ anOrderedCollection reject: [:link |
				self links detect: [:linkAssoc | linkAssoc key = link] ifNone: [^ false].
				true]]