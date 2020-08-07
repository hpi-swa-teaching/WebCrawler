graphUpdating
computeDisplacement: aVertex

	| attraction repulsion |
	attraction := self computeAttraction: aVertex.
	repulsion := self computeRepulsion: aVertex.
	^ self computeDamping: attraction+repulsion