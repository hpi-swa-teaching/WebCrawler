searching
searchSubDomainsFor: anUrl in: aCollection
	
	| relevantAuthority |
	relevantAuthority := self parser extractRelevantAuthority: anUrl.
	^ aCollection select: [:link | 
		(self parser extractRelevantAuthority: link) = relevantAuthority]