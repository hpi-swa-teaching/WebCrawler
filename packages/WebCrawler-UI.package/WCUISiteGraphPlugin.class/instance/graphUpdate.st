graphUpdating
graphUpdate

	^ [:links |
		| updatedDomains updatedConnections | 
		updatedDomains := self crawler storage siteGraph domains.
		updatedConnections := self crawler storage siteGraph domainConnections.
		updatedDomains size ~= self vertices size
			ifTrue: [
				self vertexUpdate: (updatedDomains copyFrom: self vertices size + 1 to: updatedDomains size)]."
		updatedConnections size ~= self edges size
			ifTrue: [
				self edgeUpdate: (updatedConnections copyFrom: self edges size + 1 to: updatedConnections size)]."
		self edgeUpdate: updatedConnections.
		self startGraphDrawIterations]