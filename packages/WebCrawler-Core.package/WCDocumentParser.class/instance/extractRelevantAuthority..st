parsing
extractRelevantAuthority: anUrl

	| relevantAuthority |
	relevantAuthority := self removeUrlPrefix: anUrl.
	relevantAuthority := self removeUrlSuffix: relevantAuthority.
	^ self extractLastTwoDomains: relevantAuthority