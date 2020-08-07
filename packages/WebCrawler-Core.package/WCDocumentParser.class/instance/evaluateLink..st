parsing
evaluateLink: anUrl

	| link prefix |
	link := anUrl.
	link isNil ifFalse: [
		link := self processLink: link.
		prefix := link upTo: $:.
		(link isEmpty or: [prefix ~= 'http' and: [prefix ~= 'https']]) 
			ifFalse: [self addLinkIfOptionsPermit: link]]