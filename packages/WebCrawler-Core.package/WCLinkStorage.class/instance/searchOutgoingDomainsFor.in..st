searching
searchOutgoingDomainsFor: anUrl in: aCollection

	| secondLevel |
	secondLevel := self parser extractSecondLevelDomain: anUrl.
	^ self searchForRegex: '^((?!',secondLevel,').)*$' in: aCollection