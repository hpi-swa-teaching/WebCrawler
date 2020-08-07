filtering
substituteRelativeUrls: anOrderedCollection parent: aParentUrlString

	^ anOrderedCollection collect: [:link |
		link first = $/
			ifTrue: [
				(link size > 1 and: [link second]) = $/
					ifTrue: ['http:', link]
					ifFalse: [aParentUrlString, link]]
			ifFalse: [link]]