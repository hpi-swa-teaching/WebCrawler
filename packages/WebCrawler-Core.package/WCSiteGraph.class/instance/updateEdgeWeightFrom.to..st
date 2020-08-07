storing
updateEdgeWeightFrom: anUrl to: anotherUrl

	| existingEdge |
	existingEdge := self searchExistingEdgeFrom: anUrl to: anotherUrl.
	existingEdge isNil
		ifTrue: [self domainConnections add: ((anUrl -> anotherUrl) -> 1)]
		ifFalse: [self incrementEdgeWeight: existingEdge]