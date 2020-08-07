autocrawling
selectMostRelevantLinks: anOrderedCollection

	anOrderedCollection size <= self options maxLinksToExtract
		ifTrue: [^ anOrderedCollection].
	^ self extractNthLink: anOrderedCollection