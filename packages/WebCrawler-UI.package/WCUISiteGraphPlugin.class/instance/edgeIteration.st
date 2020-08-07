graphUpdating
edgeIteration

	| vertexFrom vertexTo edgeMorph |
	self edges do: [:edge |
		vertexFrom := edge key key.
		vertexTo := edge key value.
		edgeMorph := edge value.
		edgeMorph verticesAt: 1 put: vertexFrom center;
			verticesAt: 2 put: vertexTo center.
		edgeMorph submorphs isEmpty 
			ifFalse: [edgeMorph submorphs first position: edge value center]]