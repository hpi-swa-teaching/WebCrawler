updating
updateEdge: anAssociation

	| existingEdge index |
	existingEdge := self edges detect: [:edge | edge key = anAssociation key] ifNone: [nil].
	existingEdge isNil
		ifTrue: [self edges add: anAssociation]
		ifFalse: [
			index := self edges indexOf: existingEdge.
			self edges at: index put: existingEdge key -> (existingEdge value max: anAssociation value)]