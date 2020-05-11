transformations
substituteRelativeUrls: aMainUrl

	self links: (self links collect: [:link |
		(link at: 1) = $/
			ifTrue: [aMainUrl . link]
			ifFalse: [link]])