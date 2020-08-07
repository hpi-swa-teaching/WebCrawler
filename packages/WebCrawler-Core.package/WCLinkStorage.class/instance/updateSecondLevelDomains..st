storing
updateSecondLevelDomains: anOrderedCollection

	anOrderedCollection do: [:link | 
		| secondLevelDomain |
		secondLevelDomain := self parser extractRelevantAuthority: link.
		(self secondLevelDomains includes: secondLevelDomain)
			ifFalse: [self secondLevelDomains add: secondLevelDomain]]