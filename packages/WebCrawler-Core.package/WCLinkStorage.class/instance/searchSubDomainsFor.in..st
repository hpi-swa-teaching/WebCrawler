searching
searchSubDomainsFor: anUrl in: aCollection
	
	| secondLevel |
	secondLevel := self extractSecondLevelDomain: anUrl.
	^ self searchForRegex: '[^(www)]*',secondLevel,'.*' in: aCollection