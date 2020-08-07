parsing
evaluateLink: anUrl

	| link prefix secondLevelDomain |
	link := anUrl.
	link isNil ifFalse: [
		link := (link reject: [:char | char = $\]) withoutQuoting.
		prefix := link upTo: $:.
		(link size = 0 or: [prefix ~= 'http' and: [prefix ~= 'https']]) ifFalse: [
			link := self replaceUTF8: link.
    			((link at: 1) ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
				secondLevelDomain := self extractRelevantAuthority: link.
				(secondLevelDomain = self sourceUrl)
					ifTrue: [
						self options includeSubdomains ifTrue: [self links add: link]]
					ifFalse: [
						self options includeOutgoingDomains ifTrue: [self links add: link]]
				]
			]
		]