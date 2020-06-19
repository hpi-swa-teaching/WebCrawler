autocrawling
selectMostRelevantLinks: anOrderedCollection

	| selectedLinks |
	selectedLinks := OrderedCollection new.
	self flag: #toDo. " select relevant links on a more profound basis "
	anOrderedCollection size <= self options maxLinksToExtract
		ifTrue: [^ anOrderedCollection].
	1 to: self options maxLinksToExtract do: [:i | selectedLinks add: anOrderedCollection atRandom].
	"^ anOrderedCollection copyFrom: 1 to: self options maxLinksToExtract "
	^ selectedLinks