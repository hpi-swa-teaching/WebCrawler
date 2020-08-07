graphUpdating
updateEdgeWeight: anEdgeMorph weight: aNumber

	anEdgeMorph submorphs isEmpty 
		ifFalse: [
			anEdgeMorph submorphs first contents: aNumber asString.
			anEdgeMorph borderWidth: (self getEdgeLineWidth: aNumber)]