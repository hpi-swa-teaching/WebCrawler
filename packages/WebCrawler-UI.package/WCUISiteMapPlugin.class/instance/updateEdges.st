treeUpdate
updateEdges

	self edges do: [:edge |
		| vertexFrom vertexTo |
		vertexFrom := self vertices at: edge key key.
		vertexTo := self vertices at: edge key value.
		edge value verticesAt: 1 put: vertexFrom center.
		edge value verticesAt: 2 put: vertexTo center
		"edge value position: edge value position + vertexTo position"]