storing
extractOutgoingAuthorities: aCollection

	| outgoingAuthority |
	^ aCollection collect: [:domain | 
		outgoingAuthority := self parser extractRelevantAuthority: domain.
		self updateRelevantAuthorityDictionary: domain extracted: outgoingAuthority.
		outgoingAuthority]