searching
searchOutgoingDomainsFor: anUrl in: aCollection

	
	| relevantAuthority |
	relevantAuthority := self parser extractRelevantAuthority: anUrl.
	"^ self searchForRegex: '^((?!',relevantAuthority,').)*$' in: aCollection"
	^ aCollection reject: [:link | (self parser extractRelevantAuthority: link) = relevantAuthority]