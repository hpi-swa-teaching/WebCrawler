searching
searchSubDomainsFor: anUrl in: aCollection
	
	| secondLevel |
	secondLevel := self parser extractSecondLevelDomain: anUrl.
	^ aCollection select: [:link | 
		(self parser extractSecondLevelDomain: link) = secondLevel]