storing
addLink: anUrlString parent: aParentUrlString

	(self domains includes: anUrlString)
		ifTrue: [self updateEdgeWeightFrom: aParentUrlString to: anUrlString]
		ifFalse: [
			self domains add: anUrlString.
			self domainConnections add: ((aParentUrlString -> anUrlString) -> 1)]