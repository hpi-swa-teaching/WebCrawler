filtering
substituteRelativeUrls: anOrderedCollection parent: aParentUrlString

	^ anOrderedCollection collect: [:link |
		(link at: 1) = $/
			ifTrue: [
				(link size > 1 and: [link at: 2]) = $/
					ifTrue: ['http:', link]
					ifFalse: [aParentUrlString, link]]
			ifFalse: [link]]