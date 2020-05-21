transformations
substituteRelativeUrls: aMainUrl

	self links: (self links collect: [:link |
		(link at: 1) = $/
			ifTrue: [
				(link size > 1 and: [link at: 2]) = $/
					ifTrue: ['http:', link]
					ifFalse: [aMainUrl, link]]
			ifFalse: [link]])