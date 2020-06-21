autocrawling
selectMostRelevantLinks: anOrderedCollection

	| selectedLinks positionToAdd |
	selectedLinks := OrderedCollection new.
	anOrderedCollection size <= self options maxLinksToExtract
		ifTrue: [^ anOrderedCollection].
	positionToAdd := 10.
	self options maxLinksToExtract timesRepeat: [
		selectedLinks add: (anOrderedCollection at: positionToAdd).
		positionToAdd := ((positionToAdd + 10) \\ anOrderedCollection size) + 1].
	"^ anOrderedCollection copyFrom: 1 to: self options maxLinksToExtract "
	^ selectedLinks