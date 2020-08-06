graphUpdating
getVerticesOfEdge: anEdgeAssociation

	| domainList indexFrom indexTo vertexFrom vertexTo |
	domainList := self siteGraph domains.
	indexFrom := domainList indexOf: anEdgeAssociation key key.
	indexTo := domainList indexOf: anEdgeAssociation key value.
	vertexFrom := self vertices at: indexFrom.
	vertexTo := self vertices at: indexTo.
	^ vertexFrom -> vertexTo