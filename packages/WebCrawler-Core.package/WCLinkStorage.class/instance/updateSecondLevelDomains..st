storing
updateSecondLevelDomains: anOrderedCollection

	anOrderedCollection do: [:link | 
		| secondLevelDomain |
		secondLevelDomain := self extractSecondLevelDomain: link.
		(self secondLevelDomains includes: secondLevelDomain)
			ifFalse: [self secondLevelDomains add: secondLevelDomain]]