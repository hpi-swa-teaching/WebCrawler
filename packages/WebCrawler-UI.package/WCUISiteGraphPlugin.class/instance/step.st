graphUpdating
step

	self activateDrawIterations
		ifTrue: [
			"Transcript show: 'drawing...';cr."
			self drawIteration]