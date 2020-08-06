storing
updateSecondLevelDomains: anOrderedCollection

	anOrderedCollection do: [:link | 
		| secondLevelDomain |
		secondLevelDomain := self parser extractSecondLevelDomain: link.
		(self secondLevelDomains includes: secondLevelDomain)
			ifFalse: [self secondLevelDomains add: secondLevelDomain]]