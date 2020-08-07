autocrawling
addNewLinksToQueue: aNumber

	| crawledLinks newPairs |
	crawledLinks := self selectMostRelevantLinks: self storage newLinks.
	aNumber < self options maxRecursionDepth
		ifTrue: [
			newPairs := crawledLinks collect: [:link | link -> (aNumber + 1)].
			self linkQueue addAll: newPairs]