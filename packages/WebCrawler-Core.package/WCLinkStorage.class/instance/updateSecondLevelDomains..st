storing
updateSecondLevelDomains: anOrderedCollection

	| relevantAuthority |
	anOrderedCollection do: [:link | 
		relevantAuthority := self parser extractRelevantAuthority: link.
		(self secondLevelDomains includes: relevantAuthority)
			ifFalse: [self secondLevelDomains add: relevantAuthority]]