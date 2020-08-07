storing
updateRelevantAuthorities: anOrderedCollection

	| relevantAuthority |
	anOrderedCollection do: [:link | 
		relevantAuthority := self parser extractRelevantAuthority: link.
		(self relevantAuthorities includes: relevantAuthority)
			ifFalse: [self relevantAuthorities add: relevantAuthority]]