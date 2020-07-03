graphUpdating
edgeUpdate: aCollection

	| domainList |
	domainList := self crawler storage siteGraph domains.
	aCollection do: [:edge | 
		| indexFrom indexTo vertexFrom vertexTo line weight oldLineMorph |
		indexFrom := domainList indexOf: edge key key.
		indexTo := domainList indexOf: edge key value.
		vertexFrom := self vertices at: indexFrom.
		vertexTo := self vertices at: indexTo.
		vertexFrom updateEdge: (indexTo -> edge value).
		vertexTo updateEdge: (indexFrom-> edge value).
		oldLineMorph := self edges detect: [:existingEdge | (existingEdge key key = indexFrom or: [existingEdge key key = indexTo]) and: [existingEdge key value = indexTo or: [existingEdge key value = indexFrom]] ] ifNone: [Transcript show: 'no old edge found for ', edge;cr. 0].
		oldLineMorph = 0 
			ifTrue: [
				line := LineMorph from: vertexFrom center to: vertexTo center color: Color lightGray width: 2 * (edge value log2 max: 1).
				weight := StringMorph new contents: edge value asString ; position: line center.
				line addMorphFront: weight.
				self edgePlane addMorphBack: line.
				Transcript show: 'line submorphs: ', line submorphs size;cr.
				self edges add: indexTo -> indexFrom -> line]
			ifFalse: [
				oldLineMorph value submorphs isEmpty 
					ifFalse: [oldLineMorph value submorphs first contents: edge value asString]].
		]