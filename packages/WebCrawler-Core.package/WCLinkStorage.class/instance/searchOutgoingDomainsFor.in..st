searching
searchOutgoingDomainsFor: anUrl in: aCollection

	
	| secondLevel |
	secondLevel := self extractSecondLevelDomain: anUrl.
	^ self searchForRegex: '^((?!',secondLevel,').)*$' in: aCollection