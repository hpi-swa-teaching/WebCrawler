treeUpdate
updateEdges

	| vertexFrom vertexTo |
	self edges do: [:edge |
		vertexFrom := edge key key.
		vertexTo := edge key value.
		edge value verticesAt: 1 put: vertexFrom center.
		edge value verticesAt: 2 put: vertexTo center]