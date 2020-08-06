graphUpdating
graphUpdate

	^ [:links |
		| updatedDomains updatedConnections newVertices | 
		updatedDomains := self siteGraph domains.
		updatedConnections := self siteGraph domainConnections.
		updatedDomains size ~= self vertices size
			ifTrue: [
				newVertices := (updatedDomains copyFrom: self vertices size + 1 to: updatedDomains size).
				self vertexUpdate: newVertices].
		self edgeUpdate: updatedConnections.
		self startGraphDrawIterations]