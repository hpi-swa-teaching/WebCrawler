graphUpdating
deactivateIfStable: aNumber

	aNumber < self minimumDisplacementThreshold
		ifTrue: [
			Transcript show: 'movement stable!';cr. 
			self activateDrawIterations: false]