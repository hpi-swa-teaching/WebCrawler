graphUpdating
drawIteration
	
	| totalDisplacement minValues |
	totalDisplacement := 0."
	Transcript show: 'NEW';cr."
	minValues := 10000@10000.
	self vertices do: [:vertex | 
		| attraction repulsion displacement |
		attraction := self computeAttraction: vertex.
		repulsion := self computeRepulsion: vertex.
		attraction := attraction * self attractionFactor.
		repulsion := repulsion * self repulsionFactor.
		displacement := (repulsion + attraction) * self dampingFactor.
		displacement := self clamp: displacement min: -10 asPoint max: 10 asPoint.
		totalDisplacement := totalDisplacement + displacement x abs + displacement y abs.
		"displacement := displacement abs ceiling * displacement sign.""
		Transcript show: 'got displacement: ', displacement, ' repulsion: ', repulsion asFloatPoint, ' attraction: ', attraction asFloatPoint, ' for: ', (self crawler storage siteGraph domains at: vertex index);cr."
		(self hashPosition: vertex position) ~= (self hashPosition: vertex position + displacement)
			ifTrue: [
				| oldHashPosition newHashPosition |
				oldHashPosition := self hashPosition: vertex position.
				newHashPosition := self hashPosition: vertex position + displacement.
				(self positionHashMap at: oldHashPosition x at: oldHashPosition y) remove: vertex ifAbsent: [].
				(self positionHashMap at: newHashPosition x at: newHashPosition y) add: vertex].
		vertex position: vertex position + displacement.
		"vertex position: (self clamp: vertex position min: 0 asPoint max: (self scroller extent - vertex extent))"
		minValues := minValues min: vertex position.
		"(vertex position dist: 0 asPoint) < (minValues dist: 0 asPoint)
			ifTrue: [minValues := minValues min: vertex position]"].
	
	minValues := 20 asPoint - minValues."
	Transcript show: 'minvals: ',minValues;cr."
	self vertices do: [:vertex |
		vertex position: vertex position + minValues].
	self edges do: [:edge |
		| vertexFrom vertexTo |
		vertexFrom := self vertices at: edge key key.
		vertexTo := self vertices at: edge key value.
		edge value verticesAt: 1 put: vertexFrom center.
		edge value verticesAt: 2 put: vertexTo center.
		edge value submorphs isEmpty 
			ifFalse: [edge value submorphs first position: edge value center]].
	totalDisplacement < self minimumDisplacementThreshold
		ifTrue: [
			Transcript show: 'movement stable!';cr. self activateDrawIterations: false]."
	Transcript show: 'total dist between nodes: ',(self vertices first position dist: self vertices second position);cr."