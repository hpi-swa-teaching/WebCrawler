graphUpdating
computeRepulsion: aVertex

	| repulsion collisions |
	collisions := self verticesInVincinity: aVertex.
	repulsion := collisions inject: 0 asPoint into: [:prevRepulsion :vertex |
		prevRepulsion + self singleVertexRepulsion: (aVertex position - vertex position)].
	^ repulsion * self repulsionFactor
			