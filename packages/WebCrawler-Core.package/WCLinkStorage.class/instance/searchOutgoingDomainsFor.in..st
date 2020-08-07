searching
searchOutgoingDomainsFor: anUrl in: aCollection

	
	| secondLevel |
	secondLevel := self parser extractRelevantAuthority: anUrl.
	^ self searchForRegex: '^((?!',secondLevel,').)*$' in: aCollection