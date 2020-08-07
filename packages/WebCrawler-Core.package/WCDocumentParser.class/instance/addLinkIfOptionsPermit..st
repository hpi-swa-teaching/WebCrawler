parsing
addLinkIfOptionsPermit: anUrlString

	| relevantAuthority |
	(anUrlString first ~=  $# or: [self options includeSiteInternalReferences]) ifTrue: [
		relevantAuthority := self extractRelevantAuthority: anUrlString.
		(relevantAuthority = self sourceUrl)
			ifTrue: [self options includeSubdomains ifTrue: [self links add: anUrlString]]
			ifFalse: [self options includeOutgoingDomains ifTrue: [self links add: anUrlString]]]