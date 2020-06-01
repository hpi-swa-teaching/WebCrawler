links
nextBackgroundColor

	self colorIndex: self colorIndex + 1.
	self colorIndex > self linkColors size 
		ifTrue: [self colorIndex: 1].
		
	^ self linkColors at: self colorIndex