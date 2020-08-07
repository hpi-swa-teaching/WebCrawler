initialize-release
setDefaultValues

	self vertices: OrderedCollection new;
		edges: OrderedCollection new;
		positionHashMap: self createNewPositionHashMap;
		activateDrawIterations: false