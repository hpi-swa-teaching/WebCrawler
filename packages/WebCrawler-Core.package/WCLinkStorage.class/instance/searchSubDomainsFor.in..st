searching
searchSubDomainsFor: anUrl in: aCollection
	
	| secondLevel |
	secondLevel := self parser extractRelevantAuthority: anUrl.
	^ aCollection select: [:link | 
		(self parser extractRelevantAuthority: link) = secondLevel]