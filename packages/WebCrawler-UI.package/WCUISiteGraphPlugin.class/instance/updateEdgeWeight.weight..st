graphUpdating
updateEdgeWeight: anEdgeMorph weight: aNumber

	anEdgeMorph value submorphs isEmpty 
		ifFalse: [
			anEdgeMorph value submorphs first contents: aNumber asString.
			anEdgeMorph value borderWidth: (self getEdgeLineWidth: aNumber)]