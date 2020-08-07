storing
extractOutgoingAuthorities: aCollection

	| outgoingAuthority |
	^ aCollection collect: [:domain | 
		outgoingAuthority := self parser extractRelevantAuthority: domain.
		self updateSecondLevelDictionary: domain extracted: outgoingAuthority.
		outgoingAuthority]