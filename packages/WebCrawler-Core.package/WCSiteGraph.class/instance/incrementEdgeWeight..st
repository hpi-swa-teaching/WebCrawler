storing
incrementEdgeWeight: anEdge

	| existingEdge index |
	index := self domainConnections indexOf: anEdge.
	existingEdge := anEdge key -> (anEdge  value + 1).
	self domainConnections at: index put: existingEdge