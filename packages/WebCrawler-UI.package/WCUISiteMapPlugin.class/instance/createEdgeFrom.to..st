treeUpdate
createEdgeFrom: aVertex to: anotherVertex

	| newLineMorph newEdge |
	newLineMorph := LineMorph from: aVertex center to: anotherVertex center color: Color lightGray width: self edgeWidth.
	newEdge := aVertex -> anotherVertex -> newLineMorph.
	self edges add: newEdge.
	self edgePlane addMorphFront: newLineMorph.