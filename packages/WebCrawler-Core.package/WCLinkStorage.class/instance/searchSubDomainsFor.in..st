searching
searchSubDomainsFor: anUrl in: aCollection
	
	| secondLevel |
	secondLevel := self parser extractSecondLevelDomain: anUrl.
	^ self searchForRegex: '[^(www)]*',secondLevel,'.*' in: aCollection