updating
updateEdge: anAssociation

	| existingEdge |
	existingEdge := self edges detect: [:edge | edge key = anAssociation key] ifNone: [0].
	existingEdge = 0
		ifTrue: [self edges add: anAssociation]
		ifFalse: [
			| index |
			index := self edges indexOf: existingEdge.
			self edges at: index put: existingEdge key -> (existingEdge value max: anAssociation value)]