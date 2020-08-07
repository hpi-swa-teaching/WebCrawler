graphUpdating
graphUpdate

	^ [:links |
		self addNewVertices: self siteGraph domains.
		self edgeUpdate: self siteGraph domainConnections.
		self startGraphDrawIterations]