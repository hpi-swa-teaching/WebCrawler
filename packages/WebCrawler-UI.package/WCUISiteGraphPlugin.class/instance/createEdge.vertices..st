graphUpdating
createEdge: anEdge vertices: vertices

	| lineWidth line weight |
	lineWidth := self getEdgeLineWidth: anEdge value.
	line := LineMorph 
		from: vertices key center to: vertices value center color: Color lightGray width: lineWidth.
	weight := StringMorph new 
		contents: anEdge value asString; 
		position: line center.
	line addMorphFront: weight.
	self edgePlane addMorphBack: line.
	self edges add: vertices key -> vertices value -> line