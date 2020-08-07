parsing
evaluateLink: anUrl

	| link prefix |
	link := anUrl.
	link isNil 
		ifFalse: [
			link := self processLink: link.
			prefix := link upTo: $:.
			(link size = 0 or: [prefix ~= 'http' and: [prefix ~= 'https']]) 
				ifFalse: [self addLinkIfOptionsPermit: link]]